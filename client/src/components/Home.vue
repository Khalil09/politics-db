<template>
  <div>
    <navbar></navbar>
    <b-container fluid>
      <ParticlesJS></ParticlesJS>
      <b-row>
        <b-col cols="2">
          <br/>
          <TableList v-bind:tables="tables"></TableList>
        </b-col>
        <b-col cols="10">
          <br/>
          <dbTable v-if="isNotHome" v-bind:table="table" v-bind:dt="items"></dbTable>
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
import TablesService from '@/services/TablesService'

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
      table: "",
      tables: [],
      items: [],
      isNotHome: false
    }
  },
  mounted () {
    this.getTable()
    this.getTables()
  },
  methods: {
    async getTables (){
      const response = await TablesService.fetchTables()
      if(response.error){

      }
      this.tables = response.data
    },
    async getTable (){
      this.isNotHome = !(this.$router.currentRoute.name === "Home")

      if (!this.isNotHome) {
        this.table = this.$router.currentRoute.name

        const response = await TablesService.fetchTableData(this.table.toLowerCase())

        if(response.error) {
          console.log(response.error)
        } else {
          this.items = response.data
        }
      }
    },
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>

</style>
