<template>
  <div>
    <navbar></navbar>
    <ParticlesJS></ParticlesJS>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'
import ParticlesJS from '@/components/Particles'

export default {
  name: 'Home',
  components: {
    'navbar': Navbar,
    'ParticlesJS': ParticlesJS
  },
  data () {
    return {}
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
