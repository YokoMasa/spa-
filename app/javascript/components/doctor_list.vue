<template>
  <div>
    <table class="table">
      <thead>
        <tr>
          <td>First name</td>
          <td>Last name</td>
          <td>hospital</td>
          <td>department</td>
          <td>ever involved</td>
          <td>email</td>
          <td>tel</td>
          <td>fax</td>
          <td>comment</td>
        </tr>
      </thead>
      <tbody>
        <tr v-for="doctor in doctors" is="doctor-list-element" :key="doctor.id" :doctor="doctor"></tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import doctorApi from '../api/doctor_api.js'
import DoctorListElement from './doctor_list_element.vue'

export default {
  created: function() {
    doctorApi.index().then(data => {
      this.doctors = data
    })
  },
  data: function () {
    return {
      doctors: []
    }
  },
  components: {
    doctorListElement: DoctorListElement
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>