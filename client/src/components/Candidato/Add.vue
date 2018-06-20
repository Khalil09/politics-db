<template>
  <div>
    <b-form @submit="onSubmit">
      <b-form-group id="id_pessoa" label="Pessoa:" label-for="id_pessoaInput">
        <b-form-select v-model="form.id_pessoa" :options="optionsPessoa" class="mb-3" />
      </b-form-group>
      <b-form-group id="id_partido" label="Partido:" label-for="id_partidoInput">
        <b-form-select v-model="form.id_partido" :options="optionsPartido" class="mb-3" />
      </b-form-group>
      <b-form-group id="id_cargo" label="Cargo:" label-for="id_cargoInput">
        <b-form-select v-model="form.id_cargo" :options="optionsCargo" class="mb-3" />
      </b-form-group>
      <b-form-group id="id_chapa" label="Chapa:" label-for="id_chapaInput">
        <b-form-select v-model="form.id_chapa" :options="optionsChapa" class="mb-3" />
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
        id_pessoa: null,
        id_partido: null,
        id_cargo: null,
        id_chapa: null
      },
      optionsPessoa: [
        {value: null, text: 'Selecione uma Pessoa'}
      ],
      optionsPartido: [
        {value: null, text: 'Selecione um Partido'}
      ],
      optionsCargo: [
        {value: null, text: 'Selecione um Cargo'}
      ],
      optionsChapa: [
        {value: null, text: 'Selecione uma Chapa'}
      ]
    }
  },
  mounted () {
    this.getOptionsPessoa()
    this.getOptionsPartido()
    this.getOptionsCargo()
    this.getOptionsChapa()
  },
  methods: {
    async onSubmit (evt) {
      evt.preventDefault()

      const response = await TablesService.createTableData(this.form, this.table)

      if (response.error) {
        console.log(response.error)
      }
    },
    async getOptionsPessoa () {
      var response = await TablesService.fetchPessoas()
      response.data.forEach((element) => {
        this.options.push({value: element.id, text: element.nome})
      })
    },
    async getOptionsPartido () {
      var response = await TablesService.fetchPartidos()
      response.data.forEach((element) => {
        this.options.push({value: element.id, text: element.nome})
      })
    },
    async getOptionsCargo () {
      var response = await TablesService.fetchCargos()
      response.data.forEach((element) => {
        this.options.push({value: element.id, text: element.nome})
      })
    },
    async getOptionsChapa () {
      var response = await TablesService.fetchChapa()
      response.data.forEach((element) => {
        this.options.push({value: element.id, text: element.nome})
      })
    }
  }
}
</script>

<style scoped>

</style>
