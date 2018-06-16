<template>
  <div>
    <navbar></navbar>
    <br/>
    <br/>
    <b-container fluid>
      <b-row>
        <b-col>
          <!-- put your stuff here -->
        </b-col>
        <b-col cols="8">
          <dbTable v-bind:items="items"></dbTable>
        </b-col>
        <b-col></b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'
import DBTable from '@/components/dbtable.vue'

export default {
  name: 'Home',
  components: {
    'navbar': Navbar,
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
