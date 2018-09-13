import Vue from 'vue'
import VueRouter from 'vue-router'
import DocList from './components/doctor_list.vue'

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/doctor', component: DocList },
  ],
})