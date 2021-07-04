<template>
  <div>
    <img alt="Vue logo" src="../assets/logo.png" />

    <div class="container">
      <router-link
        class="btn btn-outline-secondary btn-lg"
        to="/info">Info</router-link>
    </div>

    <div class="padding2" />
  </div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from 'vue-property-decorator'

@Component
export default class Home extends Vue {
  @Prop() private msg!: string;
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.padding1 {
  padding: 20px;
}
.padding2 {
  padding: 10px;
}
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #719a5b;
  margin: 10px 10px;
}
</style>
