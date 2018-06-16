<template>
  <div>
    <navbar></navbar>
    <b-container fluid>
      <b-row>
        <b-col class="noPadding">
          <TableList></TableList>
        </b-col>
        <b-col cols="8">
          <br/>
          <br/>
          <dbTable></dbTable>
        </b-col>
        <b-col></b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'
import TableList from '@/components/TableList.vue'
import DBTable from '@/components/dbtable.vue'

export default {
  name: 'Home',
  components: {
    'navbar': Navbar,
    'TableList': TableList,
    'dbTable': DBTable
  },
  data () {
    return {}
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
.noPadding {
  padding-left: 0px;
}
</style>
