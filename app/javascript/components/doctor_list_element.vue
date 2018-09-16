<template>
  <tr>
    <td>{{ doctor.first_name }}</td>
    <td>{{ doctor.last_name }}</td>
    <td>{{ doctor.hospital_name }}</td>
    <td>{{ doctor.department_name }}</td>
    <td>{{ ever_involved }}</td>
    <td>{{ doctor.email }}</td>
    <td>{{ doctor.tel }}</td>
    <td>{{ doctor.fax }}</td>
    <td>{{ doctor.comment }}</td>
    <td>
      <router-link :to="{ name: 'doc_edit', params: { id: doctor.id } }">
        <i class="material-icons">create</i>
      </router-link>
    </td>
  </tr>
</template>

<script>
export default {
  props: {
    doctor: Object
  },
  computed: {
    ever_involved() {
      return this.doctor.has_ever_involved ? "Yes" : "No"
    }
  }
}
</script>

<style scoped>
i {
  color: #555;
}

i:hover {
  color: #000;
}
</style>