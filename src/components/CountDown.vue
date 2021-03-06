<template>
<div class="container">
  <div class="rounded bg-gradient-3 text-white shadow p-5 text-center mb-5">
    <p class="mb-0 font-weight-bold text-uppercase font-color">Vigsel börjar om</p>
    <div id="clock" class="countdown pt-4 font-color">
        <span class="h1 font-weight-bold font-color">{{days}}</span>days
        <span class="h1 font-weight-bold font-color">{{hours}}</span>hr
        <span class="h1 font-weight-bold font-color">{{minutes}}</span>min
        <span class="h1 font-weight-bold font-color">{{seconds}}</span>sec
    </div>
  </div>
</div>
</template>

<script lang="ts">
import { Component, Prop, Vue, Watch } from 'vue-property-decorator'

function time () {
  return Math.trunc((new Date()).getTime() / 1000)
}

@Component
export default class CountDown extends Vue {
  @Prop({ default: Date.parse('10 JUL 2021 12:00:00 UTC') }) readonly deadline!: number;

  private date: number = 0
  private interval: any = null
  private now: number = time()

  created () {
    let endTime = this.deadline
    this.date = Math.trunc(endTime / 1000)

    if (!this.date) {
      throw new Error("Invalid props value, correct the 'deadline' or 'end'")
    }

    this.interval = setInterval(() => {
      this.now = time()
    }, 1000)
  }

  get days (): number {
    return Math.trunc(this.diff / 60 / 60 / 24)
  }

  get hours (): number {
    return Math.trunc(this.diff / 60 / 60) % 24
  }

  get minutes (): number {
    return Math.trunc(this.diff / 60) % 60
  }

  get seconds (): number {
    return Math.trunc(this.diff) % 60
  }

  get diff (): number {
    var diff_: number = this.date - this.now
    if (diff_ <= 0) {
      diff_ = 0
      // Remove interval
      clearInterval(this.interval)
    }
    return diff_
  }
}
</script>

<style scoped>
.countdown {
    text-transform: uppercase;
    font-weight: bold;
}

.font-color {
  color: #f7ebd6;
}

.countdown span {
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
    font-size: 3rem;
    margin-left: 0.8rem;
}

.countdown span:first-of-type {
    margin-left: 0;
}

.countdown-circles {
    text-transform: uppercase;
    font-weight: bold;
}

.countdown-circles span {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.2);
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
}

.countdown-circles span:first-of-type {
    margin-left: 0;
}

.bg-gradient-3 {
    background: #719a5b;
    background: -webkit-linear-gradient(to right, #719a5b, #466047);
    background: linear-gradient(to right, #719a5b, #466047);
}

</style>
