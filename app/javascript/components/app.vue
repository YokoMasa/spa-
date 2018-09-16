<template>
  <div id="app">
    <div class="titleBar">
      {{ title }}
    </div>
    <router-view @title-change="changeTitle"></router-view>
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: ""
    }
  },
  methods: {
    changeTitle(title) {
      this.title = title
    }
  }
}
</script>

<style>
.titleBar {
  height: 70px;
  width: 100%;
  background-color: #55dd55;
  color: #FFF;
  font-size: 30px;
  padding: 10px 0 10px 40px;
}
</style>
