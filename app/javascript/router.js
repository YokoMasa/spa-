import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './components/app.js'

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/', component: App },
  ],
})