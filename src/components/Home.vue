<template>
  <div>
    <div class="container">
          <a
            href="https://docs.google.com/forms/d/e/1FAIpQLScu5phbrIywXJTc8bsGuWEaRnh3jvuubccHecuW9OgbLCo-pw/viewform?usp=sf_link"
            class="btn btn-outline-secondary btn-lg"
            role="button"
            aria-pressed="true">
            Anmälan</a>
          <a
            href="https://docs.google.com/forms/d/e/1FAIpQLScu5phbrIywXJTc8bsGuWEaRnh3jvuubccHecuW9OgbLCo-pw/viewform?usp=sf_link"
            class="btn btn-outline-secondary btn-lg"
            role="button"
            aria-pressed="true">
            Anmäl tal</a>
    </div>
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
  color: #42b983;
  margin: 0 10px;
}
</style>
