<template>
  <div class="wrapper">
    <div class="formWrapper">
      <doctor-form @form-completed="create"></doctor-form>
    </div>
  </div>
</template>

<script>
import DoctorForm from './doctor_form.vue'
import DoctorApi from '../api/doctor_api.js'

export default {
  created() {
    this.$emit('title-change', 'Add new doctor')
  },
  methods: {
    create(data) {
      DoctorApi.create(data)
        .then(response => {
          alert("created!!")
        })
        .catch(error => {
          alert(error)
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