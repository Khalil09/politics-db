<template>
  <div>
    <navbar></navbar>
    <TableList></TableList>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'
import TableList from '@/components/TableList.vue'

export default {
  name: 'Home',
  components: {
    'navbar': Navbar,
    'TableList': TableList
  },
  data () {
    return {}
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
