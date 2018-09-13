<template>
  <div>
    <p>{{ message }}</p>
  </div>
</template>

<script>
import doctorApi from '../api/doctor_api.js'

export default {
  created: function() {
    doctorApi.index().then(data => {
      console.log(data)
    })
  },
  data: function () {
    return {
      message: "doc list"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>