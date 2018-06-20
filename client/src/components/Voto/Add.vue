<template>
  <div>
    <b-form @submit="onSubmit">
      <b-form-group id="id_eleitor" label="Eleitor:" label-for="id_eleitorInput">
          <b-form-select v-model="form.id_eleitor" :options="optionsEleitor" class="mb-3" />
      </b-form-group>

      <b-form-group id="id_candidato" label="Candidato:" label-for="id_candidatoInput">
          <b-form-select v-model="form.id_candidato" :options="optionsCandidato" class="mb-3" />
      </b-form-group>

      <b-form-group id="id_urna" label="Urna:" label-for="id_urnaInput">
          <b-form-select v-model="form.id_urna" :options="optionsUrna" class="mb-3" />
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
    }
  },
  data () {
    return {
      form: {
        data: "2018-10-15",
        id_eleitor: null,
        id_candidato: null,
        id_urna: null
      },
      optionsEleitor: [
        {value: null, text: 'Selecione o eleitor'}
      ],
      optionsCandidato: [
        {value: null, text: 'Selecione o candidato'}
      ],
      optionsUrna: [
        {value: null, text: 'Selecione o Urna'}
      ]
    }
  },
  mounted () {
    this.getOptionsEleitor()
    this.getOptionsCandidato()
    this.getOptionsUrna()
  },
  methods: {
    async onSubmit (evt) {
      evt.preventDefault()

      const response = await TablesService.createTableData(this.form, this.table)

      if (response.error) {
        console.log(response.error)
      }
    },
    async getOptionsEleitor () {
      var response = await TablesService.fetchEleitor()
      response.data.forEach((element) => {
        this.optionsEleitor.push({value: element.id, text: element.titulo_eleitor + ' - ' + element.nome})
      })
    },
    async getOptionsCandidato () {
      var response = await TablesService.fetchCandidato()
      console.log(response)
      response.data.forEach((element) => {
        this.optionsCandidato.push({value: element.id, text: element.nome})
      })
    },
    async getOptionsUrna () {
      var response = await TablesService.fetchUrna()
      console.log(response)
      response.data.forEach((element) => {
        this.optionsUrna.push({value: element.id, text: element.id})
      })
    }
  }
}
</script>

<style scoped>

</style>
