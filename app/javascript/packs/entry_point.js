import Vue from 'vue'
import Router from '../router.js'
import App from '../components/app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: "#app",
    router: Router,
    render: (h) => h(App)
  })
})