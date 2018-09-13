import axios from 'axios'

export default {
  index() {
    return new Promise((resolve, reject) => {
      axios.get('/api/doctor')
      .then(response => {
        resolve(response.data)
      })
      .catch(error => {
        handleError(error, reject)
      })
    })
  }
}

function handleError(error, reject) {
  errorObj = {}
  if (error.response) {
    errorObj.status = error.response.status
    errorObj.data = error.response.data
  } else {
    errorObj.status = 999
    errorObj.data = "connection failed."
  }
  reject(errorObj)
}