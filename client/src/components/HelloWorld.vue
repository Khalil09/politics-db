<template>
  <div class="bg-primary">
    <navbar></navbar>
    <b-container >
    </b-container>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'

export default {
  name: 'HelloWorld',
  components: {
    'navbar': Navbar
  },
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
