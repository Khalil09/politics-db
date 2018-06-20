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
        <b-btn v-if="isVoto" v-b-modal.votoAdd>Add Voto</b-btn>
        <b-btn v-if="isEndereco" v-b-modal.enderecoAdd>Add Endereço</b-btn>
        <b-btn v-if="isEleitor" v-b-modal.eleitorAdd>Add Eleitor</b-btn>
        <b-btn v-if="isCandidato" v-b-modal.candidatoAdd>Add Candidato</b-btn>

        <b-modal id="votoAdd" title="Add">
          <addVoto v-bind:table="table"></addVoto>
        </b-modal>

        <b-modal id="enderecoAdd" title="Add">
          <addEndereco v-bind:table="table"></addEndereco>
        </b-modal>

        <b-modal id="eleitorAdd" title="Add">
          <addEleitor v-bind:table="table"></addEleitor>
        </b-modal>

        <b-modal id="candidatoAdd" title="Add">
          <addCandidato v-bind:table="table"></addCandidato>
        </b-modal>
      </b-col>
    </b-row>
    <br>
    <b-table show-empty stacked="md" :items="items" :fields="fields" :current-page="currentPage" :per-page="perPage" :filter="filter" @filtered="onFiltered">
      <template slot="actions" slot-scope="row">
        <b-button size="sm" @click.stop="row.toggleDetails" class="mr-2">
          Show
        </b-button>
        <b-button size="sm" v-if="isCandidato" @click.stop="see(row.item, row.index, $event.target)" class="mr-1">
          See
        </b-button>
        <b-button size="sm" v-if="isCandidato" @click.stop="upload(row.item, row.index, $event.target)" class="mr-1">
          Upload
        </b-button>
        <b-button size="sm" v-if="isVoto" @click.stop="editVoto(row.item, row.index, $event.target)" class="mr-1">
          Edit
        </b-button>
        <b-button size="sm" v-if="isEndereco" @click.stop="editEndereco(row.item, row.index, $event.target)" class="mr-1">
          Edit
        </b-button>
        <b-button size="sm" v-if="isEleitor" @click.stop="editEleitor(row.item, row.index, $event.target)" class="mr-1">
          Edit
        </b-button>
        <b-button size="sm" v-if="isCandidato" @click.stop="editCandidato(row.item, row.index, $event.target)" class="mr-1">
          Edit
        </b-button>
        <b-button size="sm" @click.stop="removeItem(row.item, row.index, $event.target)" class="mr-1">
          Delete
        </b-button>
      </template>
      <template slot="row-details" slot-scope="row">
        <b-card>
          <div v-for="(v, k) in row.item">
            <b-row class="mb-2">
              <b-col sm="3" class="text-sm-right"><b>{{ k }}</b></b-col>
              <b-col>{{ v }}</b-col>
            </b-row>
          </div>
          <b-button size="sm" @click="row.toggleDetails">Collapse</b-button>
        </b-card>
      </template>
    </b-table>

    <b-row>
      <b-col md="6" class="my-1">
        <b-pagination :total-rows="totalRows" :per-page="perPage" v-model="currentPage" class="my-0" />
      </b-col>
    </b-row>

    <b-modal id="votoEdit" :title="modalInfo.title">
      <editVoto v-bind:table="table" v-bind:form="modalInfo.item"></editVoto>
    </b-modal>

    <b-modal id="enderecoEdit" :title="modalInfo.title">
      <editEndereco v-bind:table="table" v-bind:form="modalInfo.item"></editEndereco>
    </b-modal>

    <b-modal id="candidatoEdit" :title="modalInfo.title">
      <editCandidato v-bind:table="table" v-bind:form="modalInfo.item"></editCandidato>
    </b-modal>

    <b-modal id="eleitorEdit" :title="modalInfo.title">
      <editEleitor v-bind:table="table" v-bind:form="modalInfo.item"></editEleitor>
    </b-modal>

    <b-modal id="photo" title="Add Photo">
      <addPhoto v-bind:candidato="candidato"></addPhoto>
    </b-modal>
  </b-container>
</template>

<script>
import TablesService from '@/services/TablesService'
import AddEleitor from '@/components/Eleitor/Add.vue'
import AddEndereco from '@/components/Endereco/Add.vue'
import AddVoto from '@/components/Voto/Add.vue'
import AddCandidato from '@/components/Candidato/Add.vue'
import EditEleitor from '@/components/Eleitor/Edit.vue'
import EditEndereco from '@/components/Endereco/Edit.vue'
import EditVoto from '@/components/Voto/Edit.vue'
import EditCandidato from '@/components/Candidato/Edit.vue'
import AddPhoto from '@/components/addPhoto.vue'

export default {
  name: 'DBTable',
  components: {
    'addEleitor': AddEleitor,
    'addEndereco': AddEndereco,
    'addVoto': AddVoto,
    'addCandidato': AddCandidato,
    'editEleitor': EditEleitor,
    'editEndereco': EditEndereco,
    'editVoto': EditVoto,
    'editCandidato': EditCandidato,
    'addPhoto': AddPhoto
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
      isEleitor: false,
      isCandidato: false,
      candidato: {},
      foto: {}
    }
  },
  mounted () {
    this.checkStuff()
  },
  computed: {},
  methods: {
    see (item, index, button) {
      this.foto = item
      var dataUri = TablesService.fetchPhoto(item.id)
      console.log(dataUri)
      // pega dataUri
      // abre nova aba com data uri
    },
    upload (item, index, button) {
      console.log(item)
      this.candidato = item
      this.$root.$emit('bv::show::modal', 'photo', button)
    },
    editVoto (item, index, button) {
      this.modalInfo.item = item
      this.modalInfo.title = 'Edit Voto'
      this.$root.$emit('bv::show::modal', 'votoEdit', button)
    },
    editCandidato (item, index, button) {
      this.modalInfo.item = item
      this.modalInfo.title = 'Edit Candidato'
      this.$root.$emit('bv::show::modal', 'candidatoEdit', button)
    },
    editEndereco (item, index, button) {
      this.modalInfo.item = item
      this.modalInfo.title = 'Edit Endereco'
      this.$root.$emit('bv::show::modal', 'enderecoEdit', button)
    },
    editEleitor (item, index, button) {
      this.modalInfo.item = item
      this.modalInfo.title = 'Edit Eleitor'
      this.$root.$emit('bv::show::modal', 'eleitorEdit', button)
    },
    async removeItem (item, index, button) {
      let response = {}

      if (this.table === 'voto') {
        response = await TablesService.removeVoto(item.id_eleitor, item.id_candidato)
      } else {
        response = await TablesService.removeTableData(this.table, item.id)
      }

      if (response.error) {
        console.log(response.error)
      } else {
        location.reload()
      }
    },
    onFiltered (filteredItems) {
      // Trigger pagination to update the number of buttons/pages due to filtering
      this.totalRows = filteredItems.length
      this.currentPage = 1
    },
    checkStuff () {
      this.isVoto = (this.table === 'voto')
      console.log(this.isVoto)
      this.isEndereco = (this.table === 'endereco')
      console.log(this.isEndereco)
      this.isEleitor = (this.table === 'eleitor')
      console.log(this.isEleitor)
      this.isCandidato = (this.table === 'candidato')
      console.log(this.isCandidato)
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
