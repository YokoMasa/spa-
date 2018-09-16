<template>
  <div class="wrapper">
    <div class="formWrapper">
      <doctor-form @form-completed="update" :doctor="doctor"></doctor-form>
    </div>
  </div>
</template>

<script>
import DoctorForm from './doctor_form.vue'
import DoctorApi from '../api/doctor_api.js'

export default {
  data() {
    return {
      doctor: {}
    }
  },
  created() {
    this.$emit('title-change', 'Edit doctor')
    var self = this
    DoctorApi.show(this.$route.params.id)
    .then(response => {
      self.doctor = response
    })
    .catch(error => {
      alert("error")
    })
  },
  methods: {
    update(data) {
      DoctorApi.update(this.$route.params.id, data)
        .then(response => {
          alert("updated!!")    
        })
        .catch(error => {
          alert("error")
        })
    }
  },
  components: {
    doctorForm: DoctorForm
  }
}
</script>

<style>
.wrapper {
  display: flex;
  justify-content: center;
}

.formWrapper {
  width: 500px;
}
</style>