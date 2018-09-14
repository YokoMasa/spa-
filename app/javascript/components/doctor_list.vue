<template>
  <div>
    <table class="table is-hoverable is-fullwidth">
      <thead>
        <tr>
          <th>First name</th>
          <th>Last name</th>
          <th>hospital</th>
          <th>department</th>
          <th>ever involved</th>
          <th>email</th>
          <th>tel</th>
          <th>fax</th>
          <th>comment</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="doctor in doctors" is="doctor-list-element" :key="doctor.id" :doctor="doctor"></tr>
      </tbody>
    </table>
    <router-link class="roundButton" to="/doctor/new">
      <i class="material-icons" style="font-size: 50px;">add</i>
    </router-link>
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
.roundButton {
  display: flex;
  align-items: center;
  justify-content: center;
  color: #FFF;
  position: absolute;
  bottom: 30px;
  right: 30px;
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background-color: #6677CC;
  box-shadow: 1px 2px 2px 1px #000;
}
</style>