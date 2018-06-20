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
          <dbTable v-if="items" v-bind:table="table" v-bind:dt="items"></dbTable>
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
      table: '',
      tables: [],
      items: null,
      isNotHome: true,
      customImageMaxSize: 3 // megabytes
    }
  },
  mounted () {
    this.getTables()
    this.getTable()
  },
  watch: {
    $route (to, from) {
      this.getTable()
      location.reload()
    }
  },
  methods: {
    async getTables () {
      const response = await TablesService.fetchTables()

      if (response.error) {
        console.log(response.error)
      }

      this.tables = response.data
    },
    async getTable () {
      if (!(this.$router.currentRoute.name === 'Home')) {
        this.table = this.$router.currentRoute.name.toLowerCase()
        const response = await TablesService.fetchTableData(this.table)

        console.log(response)

        if (response.error) {
          console.log(response.error)
        } else {
          this.items = response.data
          this.isNotHome = true
        }
      }
    }
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>

</style>
