<template>
  <div>
    <img alt="Vue logo" src="../assets/logo.png" />

    <div class="padding1" />

    <div class="container">
      <a
        href="https://docs.google.com/forms/d/e/1FAIpQLScu5phbrIywXJTc8bsGuWEaRnh3jvuubccHecuW9OgbLCo-pw/viewform?usp=sf_link"
        class="btn btn-outline-secondary btn-lg"
        role="button"
        aria-pressed="true"
      >Anmälan</a>
      <a
        href="https://docs.google.com/forms/d/e/1FAIpQLScPkzmdPpw2Q9F6N_hgxQaQ3QJtveSZtNNxB1K7u6uQr_NWjA/viewform?usp=sf_link"
        class="btn btn-outline-secondary btn-lg"
        role="button"
        aria-pressed="true"
      >Anmäl buss</a>
      <a
        href="https://docs.google.com/forms/d/e/1FAIpQLScfkZ9HtlBDGyEgEl7hL4HdrQbHXkBCbAbtGXdryWZpILiI9w/viewform?usp=sf_link"
        class="btn btn-outline-secondary btn-lg"
        role="button"
        aria-pressed="true"
      >Anmäl tal</a>
    </div>

    <div class="padding2" />

    <p> O.S.A senast 17 Maj.</p>

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
