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
  },
  show(id) {
    return new Promise((resolve, reject) => {
      axios.get(`/api/doctor/${id}`)
      .then(response => {
        resolve(response.data)
      })
      .catch(error => {
        handleError(error, reject)
      })
    })
  },
  create(data) {
    return new Promise((resolve, reject) => {
      axios.post('/api/doctor', createPostParams(data))
      .then(response => {
        resolve(response)
      })
      .catch(error => {
        handleError(error, reject)
      })
    })
  },
  update(id, data) {
    return new Promise((resolve, reject) => {
      axios.put(`/api/doctor/${id}`, createPostParams(data))
      .then(response => {
        resolve(response)
      })
      .catch(error => {
        handleError(error, reject)
      })
    })
  }
}

function createPostParams(data) {
  var params = new FormData()
  for (var p in data) {
    params.append(p, data[p])
  }
  return params
}

function handleError(error, reject) {
  var errorObj = {}
  if (error.response) {
    errorObj.status = error.response.status
    errorObj.data = error.response.data
  } else {
    errorObj.status = 999
    errorObj.data = "connection failed."
  }
  reject(errorObj)
}