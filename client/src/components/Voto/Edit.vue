<template>
  <div>
    <b-form @submit="onSubmit">
      <b-form-group id="id_eleitor" label="Eleitor:" label-for="id_eleitorInput">
          <b-form-select v-model="form.id_eleitor" :options="options" class="mb-3" />
      </b-form-group>

      <b-form-group id="id_candidato" label="Id Candidato:" label-for="idInput">
        <b-form-input id="id_candidatoInput" type="number" v-model="form.id_candidato">
        </b-form-input>
      </b-form-group>
      <b-form-group id="id_urna" label="Id Urna:" label-for="idInput">
        <b-form-input id="id_UrnaInput" type="number" v-model="form.id_urna">
        </b-form-input>
      </b-form-group>
      <b-button type="submit" variant="primary">Submit</b-button>
      <b-button type="reset" variant="danger">Reset</b-button>
    </b-form>
  </div>
</template>

<script>
import TablesService from '@/services/TablesService'

export default {
  props: {
    table: {
      type: String
    },
    form: {
      type: Object
    }
  },
  data () {
    return {
      options: [
        {value: null, text: 'Selecione o eleitor'}
      ]
    }
  },
  mounted () {
    this.getOptionsEleitor()
  },
  methods: {
    async onSubmit (evt) {
      evt.preventDefault()

      const response = await TablesService.updateTableData(this.form, this.table, this.form.id)

      if (response.error) {
        console.log(response.error)
      }
    },
    async getOptionsEleitor () {
      var response = await TablesService.fetchEleitor()
      response.data.forEach((element) => {
        this.options.push({value: element.id, text: element.titulo_eleitor + ' - ' + element.nome})
      })
    },
    async getOptionsCandidato () {
      var response = await TablesService.fetchCandidato()
      response.data.forEach((element) => {
        this.options.push({value: element.id, text: element.titulo_eleitor + ' - ' + element.nome})
      })
    }
  }
}
</script>

<style scoped>

</style>
