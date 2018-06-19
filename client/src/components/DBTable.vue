<template>
  <b-container fluid class="box">
    <b-row>
      <b-col md="6" class="my-1">
        <b-form-group horizontal label="Filter" class="mb-0">
          <b-input-group>
            <b-form-input v-model="filter" placeholder="Type to Search" /> &nbsp;&nbsp;&nbsp;
            <b-input-group-append>
              <b-btn :disabled="!filter" @click="filter = ''">Clear</b-btn>
            </b-input-group-append>
          </b-input-group>
        </b-form-group>
      </b-col>
      <b-col md="6" class="my-1">
        <b-form-group horizontal label="Per page" class="mb-0">
          <b-form-select :options="pageOptions" v-model="perPage" />
        </b-form-group>
      </b-col>
    </b-row>
    <b-row>
      <b-col md="6" class="my-1">
        <b-btn v-if="isVoto" v-b-modal.voto>Add Voto</b-btn>
        <b-btn v-if="isEndereco" v-b-modal.endereco>Add Endereço</b-btn>
        <b-btn v-if="isEleitor" v-b-modal.eleitor>Add Eleitor</b-btn>

        <b-modal id="voto" title="Add">
          <addVoto v-bind:table="table"></addVoto>
        </b-modal>

        <b-modal id="endereco" title="Add">
          <addEndereco></addEndereco>
        </b-modal>

        <b-modal id="eleitor" title="Add">
          <addEleitor></addEleitor>
        </b-modal>
      </b-col>
    </b-row>
    <br>
    <b-table show-empty stacked="md" :items="items" :fields="fields" :current-page="currentPage" :per-page="perPage" :filter="filter" @filtered="onFiltered">
      <template slot="actions" slot-scope="row">
        <b-button size="sm" @click.stop="row.toggleDetails" class="mr-2">
          Show
        </b-button>
        <b-button size="sm" @click.stop="editItem(row.item, row.index, $event.target)" class="mr-1">
          Edit
        </b-button>
        <b-button size="sm" @click.stop="removeItem(row.item, row.index, $event.target)" class="mr-1">
          Delete
        </b-button>
      </template>
      <template slot="row-details" slot-scope="row">
        <b-card>
          <b-row v-for="(v, k, idx) in row.item" class="mb-2">
            <b-col sm="3" class="text-sm-right"><b>{{ k }}</b></b-col>
            <b-col>{{ v }}</b-col>
          </b-row>
          <b-button size="sm" @click="row.toggleDetails">Collapse</b-button>
        </b-card>
      </template>
    </b-table>

    <b-row>
      <b-col md="6" class="my-1">
        <b-pagination :total-rows="totalRows" :per-page="perPage" v-model="currentPage" class="my-0" />
      </b-col>
    </b-row>

    <!-- Info modal -->
    <b-modal id="modalInfo" @hide="resetModal" :title="modalInfo.title" ok-only>
      <pre>{{ modalInfo.content }}</pre>
    </b-modal>

  </b-container>
</template>

<script>
import TablesService from '@/services/TablesService'
import AddEleitor from '@/components/Eleitor/Add.vue'
import AddEndereco from '@/components/Endereco/Add.vue'
import AddVoto from '@/components/Voto/Add.vue'

export default {
  name: 'DBTable',
  components: {},
  components: {
    'addEleitor': AddEleitor,
    'addEndereco': AddEndereco,
    'addVoto': AddVoto
  },
  props: {
    dt: {
      type: Array
    },
    table: {
      type: String
    }
  },
  data () {
    return {
      fields: getFields(this.dt),
      items: this.dt,
      currentPage: 1,
      perPage: 5,
      totalRows: this.dt.length,
      pageOptions: [ 5, 10, 15 ],
      filter: null,
      modalInfo: { title: 'Edit', content: '' },
      isVoto: false,
      isEndereco: false,
      isEleitor: false
    }
  },
  mounted () {
    this.checkStuff()
  },
  computed: {},
  methods: {
    editItem (item, index, button) {
      this.$root.$emit('bv::show::modal', 'modalInfo', button)
    },
    async removeItem (item, index, button) {
      let response = {}

      if(this.table == 'voto'){
        response = await TablesService.removeVoto(item.id_eleitor, item.id_candidato)
      } else {
        response = await TablesService.removeTableData(this.table, item.id)
      }

      if(response.error){
        console.log(response.error)
      } else {
        location.reload()
      }
    },
    resetModal () {
      this.modalInfo.title = ''
      this.modalInfo.content = ''
    },
    onFiltered (filteredItems) {
      // Trigger pagination to update the number of buttons/pages due to filtering
      this.totalRows = filteredItems.length
      this.currentPage = 1
    },
    checkStuff () {
      this.isVoto = (this.table == 'voto')
      console.log(this.isVoto)
      this.isEndereco = (this.table == 'endereco')
      console.log(this.isEndereco)
      this.isEleitor = (this.table == 'eleitor')
      console.log(this.isEleitor)
    }
  }
}

function getFields (items) {
  let res = Object.keys(items[0])

  res.push('actions')

  return res
}
</script>

<style scoped>
  .box {
    background-color: white;
    padding: 10px;
  }
</style>
