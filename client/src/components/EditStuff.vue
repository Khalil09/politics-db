<template>
  <div>
    <navbar></navbar>
    <b-container fluid>
      <ParticlesJS></ParticlesJS>
      <b-row>
        <b-col cols="2">
          <br/>
          <TableList></TableList>
        </b-col>
        <b-col cols="10">
          <br/>
          <dbTable v-bind:dt="items"></dbTable>
        </b-col>
        <b-col cols="2"></b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'
import ParticlesJS from '@/components/Particles'
import TableList from '@/components/TableList.vue'
import DBTable from '@/components/DBTable.vue'

export default {
  name: 'Home',
  components: {
    'navbar': Navbar,
    'ParticlesJS': ParticlesJS,
    'TableList': TableList,
    'dbTable': DBTable
  },
  data () {
    return {
      items: [
        { isActive: true, age: 40, first_name: 'Dickerson', last_name: 'Macdonald' },
        { isActive: false, age: 21, first_name: 'Larsen', last_name: 'Shaw' },
        { isActive: false, age: 89, first_name: 'Geneva', last_name: 'Wilson' },
        { isActive: true, age: 38, first_name: 'Jami', last_name: 'Carney' }
      ]
    }
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>

</style>
