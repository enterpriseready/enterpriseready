const axios = require('axios')
const jsonp = require('jsonp-client')

// Promisified jsonp client
const fetchJsonp = url => {
  return new Promise((resolve, reject) => {
    const handler = (err, data) => err ? reject(err) : resolve(data)
    jsonp(url, handler)
  })
}

const verifyUrl = 'https://www.google.com/recaptcha/api/siteverify'

const submitUrl = 'https://go.replicated.com/l/948072'

// Handle both reCAPTCHA validation and form submission server side to ensure
// reCAPTCHA requirement is fully enforced
exports.handler = async (event, context) => {
  const { token, requestParams, formPath } = JSON.parse(event.body)

  // First, verify the reCAPTCHA token, error out if it fails
  const verifyParams = {
    secret: process.env.RECAPTCHA_SECRET_KEY,
    response: token,
  }
  try {
    await axios(verifyUrl, { method: 'post', params: verifyParams })
  } catch(err) {
    console.error(err)
    return {
      statusCode: 422,
      body: `reCAPTCHA verification failed: ${JSON.stringify(err?.response?.data?.errorCodes)}`,
    }
  }

  // reCAPTCHA verified, proceed with form submission
  try {
    // No data is returned from a successful submission
    await fetchJsonp(`${submitUrl}/${formPath}?${requestParams}`)
    return {
      statusCode: 200,
      body: 'OK',
    }
  } catch(err) {
    console.error(err)
    return {
      statusCode: 422,
      body: JSON.stringify(err),
    }
  }
}
