<template>
  <div>
    <div class="field">
      <label class="label">First Name</label>
      <div class="control">
        <input class="input" type="text" placeholder="First Name" v-model="doctorData.first_name">
      </div>
    </div>

    <div class="field">
      <label class="label">Last Name</label>
      <div class="control">
        <input class="input" type="text" placeholder="Last Name" v-model="doctorData.last_name">
      </div>
    </div>

    <div class="field">
      <label class="label">Hospital</label>
      <div class="control">
        <input class="input" type="text" placeholder="Hospital" v-model="doctorData.hospital_name">
      </div>
    </div>

    <div class="field">
      <label class="label">Ever involved</label>
      <input type="checkbox" v-model="doctorData.has_ever_involved">
      Ever involved
    </div>

    <div class="field">
      <label class="label">Email</label>
      <div class="control">
        <input class="input" type="text" placeholder="Email" v-model="doctorData.email"> 
      </div>
    </div>

    <div class="field">
      <label class="label">Tel</label>
      <div class="control">
        <input class="input" type="text" placeholder="Tel" v-model="doctorData.tel">
      </div>
    </div>

    <div class="field">
      <label class="label">Fax</label>
      <div class="control">
        <input class="input" type="text" placeholder="Fax" v-model="doctorData.fax">
      </div>
    </div>

    <label class="label">Comment</label>
    <textarea class="textarea" placeholder="comment" v-model="doctorData.comment"></textarea>

    <button class="button is-link" @click="submit">submit</button>

  </div>

</template>

<script>
export default {
  props: ['doctor'],
  data() {
    return {
      doctorData: {
        first_name: "",
        last_name: "",
        hospital_name: "",
        email: "",
        tel: "",
        fax: "",
        comment: "",
        possibility: 0,
        has_ever_involved: false
      }
    }
  },
  methods: {
    submit() {
      console.log(this.doctorData)
    }
  }
}
</script>

