exports.handler = async (event) => {
  console.log('Form submitted')

  // The jsonp-client library we're using to send jsonp requests from the server
  // expects a proper response - an executed function in a string. Jsonp is
  // terrible.
  return {
    statusCode: 200,
    body: 'handleSuccess(cbData)',
  }
}
