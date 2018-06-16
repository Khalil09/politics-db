<template>
  <div>
    <navbar></navbar>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'

export default {
  name: 'Home',
  components: {
    'navbar': Navbar,
  },
  data () {
    return {}
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
