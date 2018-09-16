import Vue from 'vue'
import VueRouter from 'vue-router'
import DocList from './components/doctor_list.vue'
import CreateDoctorPage from './components/create_doctor_page.vue'
import EditDoctorPage from './components/edit_doctor_page.vue'

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/doctor', name: 'doc_index', component: DocList },
    { path: '/doctor/new', name: 'doc_new', component: CreateDoctorPage },
    { path: '/doctor/:id/edit', name: 'doc_edit', component: EditDoctorPage }
  ],
})