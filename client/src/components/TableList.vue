<template>
  <div class="bd-sidebar">
    <nav id="bd-docs-nav" class="bd-links navbar-collapse collapse show" style="">
      <nav class="bd-links navbar-collapse collapse show" id="bd-docs-nav" style="">
        <div v-for="table in tables" class="bd-toc-item active">
          <router-link v-bind:to="'/'+ table.Tables_in_politics_db" class="bd-toc-link nuxt-link-active">{{table.Tables_in_politics_db | capitalize}}</router-link>
          <ul class="bd-sidenav nav">
          </ul>
        </div>
      </nav>
    </nav>
  </div>
</template>

<script>
import TablesService from '@/services/TablesService'

export default {
  name: 'TableList',
  data() {
    return {
      tables: []
    }
  },
  mounted() {
    this.getTables()
  },
  methods: {
    async getTables(){
      const response = await TablesService.fetchTables()
      this.tables = response.data
    }
  },
  filters: {
    capitalize: function (value) {
      if (!value) return ''
      value = value.toString()
      return value.charAt(0).toUpperCase() + value.slice(1)
    }
  }
}
</script>

<style scoped>
.nav {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
}

li {
  display: list-item;
  text-align: -webkit-match-parent;
}

.bd-links.active {
  padding-top: 16px;
  padding-top: 1rem;
  padding-bottom: 16px;
  padding-bottom: 1rem;
  margin-right: -15px;
  margin-left: -15px;
}

.bd-links {
  padding-top: 16px;
  padding-top: 1rem;
  padding-bottom: 16px;
  padding-bottom: 1rem;
  margin-right: -15px;
  margin-left: -15px;
}

.bd-toc-link {
  display: block;
  padding: 4px 24px;
  padding: .25rem 1.5rem;
  font-weight: 500;
  color: rgba(0,0,0,.65);
}

.row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -15px;
  margin-left: -15px;
}

.bd-sidebar {
  -webkit-box-ordinal-group: 1;
  -ms-flex-order: 0;
  order: 0;
  border-bottom: 1px solid rgba(0,0,0,.1);
  background-color: white;
  height: 100%;
}

.navbar-collapse {
  -ms-flex-preferred-size: 100%;
  flex-basis: 100%;
  -ms-flex-positive: 1;
  flex-grow: 1;
  -ms-flex-align: center;
  align-items: center;
}
</style>
