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
          <dbTable></dbTable>
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
    return {}
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
