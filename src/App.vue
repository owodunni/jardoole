<template>
  <div id="app">
    <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/info">Info</router-link>
    </div>
    <router-view />
    <CountDown/>
  </div>
</template>

<script>
// @ is an alias to /src
import CountDown from '@/components/CountDown.vue'

export default {
  name: 'home',
  components: {
    CountDown
  }
}
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  height: 100%;

  min-height: 100vh;
  background-color: #f7ebd6;
  padding-bottom: 30px;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #719a5b;
}
</style>
