<template>
  <div>
    <h1>Home</h1>
    <div class="container">
      <div class="row">
        <div class="col-sm">
          <a
            href="https://docs.google.com/forms/d/e/1FAIpQLScu5phbrIywXJTc8bsGuWEaRnh3jvuubccHecuW9OgbLCo-pw/viewform?usp=sf_link"
            class="btn btn-primary btn-lg active"
            role="button"
            aria-pressed="true"
          >Anmälan</a>
        </div>
        <div class="col-sm">
          <a
            href="https://docs.google.com/forms/d/e/1FAIpQLScu5phbrIywXJTc8bsGuWEaRnh3jvuubccHecuW9OgbLCo-pw/viewform?usp=sf_link"
            class="btn btn-primary btn-lg active"
            role="button"
            aria-pressed="true"
          >Anmäl tal</a>
        </div>
      </div>
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
}
</style>
