exports.handler = async (event, context) => {
  console.error(event.body)

  // The jsonp-client library we're using to send jsonp requests from the server
  // expects a proper response - an executed function in a string. Jsonp is
  // terrible.
  return {
    statusCode: 200,
    body: 'handleError(error)',
  }
}
