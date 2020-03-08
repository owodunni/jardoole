import { expect } from 'chai'
import { shallowMount } from '@vue/test-utils'
import CountDown from '@/components/CountDown.vue'

describe('HelloWorld.vue', () => {
  it('renders props.msg when passed', () => {
    const wrapper = shallowMount(CountDown)
    expect(wrapper.text()).contain('0days 0hr 0min 0sec')
  })
})
