<template>
  <div id='particles-js'></div>
</template>

<script>
export default {
  name: 'ParticlesJS',
  mounted () {
    require('particles.js')
    this.$nextTick(() => {
      this.initParticlesJS()
    })
  },
  methods: {
    initParticlesJS () {
      /* eslint-disable */
      particlesJS.load('particles-js','/static/particles.json', function() {
         console.log('callback - particles-js config loaded');
      });
      // particlesJS('particles-js')
    }
  }
}
</script>
