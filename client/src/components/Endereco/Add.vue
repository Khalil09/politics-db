<template>
  <div>
    <b-form @submit="onSubmit">
      <b-form-group id="bairro" label="Bairro:" label-for="bairroInput">
        <b-form-input id="bairroInput" type="text" v-model="form.bairro">
        </b-form-input>
      </b-form-group>

      <b-form-group id="rua" label="Rua:" label-for="ruaInput">
        <b-form-input id="ruaInput" type="text" v-model="form.rua">
        </b-form-input>
      </b-form-group>

      <b-form-group id="cep" label="CEP:" label-for="cepInput">
        <b-form-input id="cepInput" type="number" v-model="form.cep">
        </b-form-input>
      </b-form-group>

      <b-form-group id="complemento" label="Complemento:" label-for="complementoInput">
        <b-form-input id="complementoInput" type="text" v-model="form.complemento">
        </b-form-input>
      </b-form-group>

      <b-form-group id="id_municipio" label="Municipio:" label-for="id_municipioInput">
        <b-form-select v-model="form.id_municipio" :options="options" class="mb-3" />
      </b-form-group>

      <b-form-group id="id_municipio" label="Id Municipio:" label-for="id_municipioInput">
        <b-form-input id="id_municipioInput" type="select" v-model="form.id_municipio">
        </b-form-input>
      </b-form-group>

      <b-form-group id="id_secao" label="Id Secao:" label-for="id_secaoInput">
        <b-form-input id="id_secaoInput" type="number" v-model="form.id_secao">
        </b-form-input>
      </b-form-group>

      <b-form-group id="id" label="Número:" label-for="idInput">
        <b-form-input id="idInput" type="number" v-model="form.id">
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
    }
  },
  data () {
    return {
      form: {
        bairro: null,
        id: null,
        rua: null,
        cep: null,
        complemento: null,
        id_municipio: null,
        id_secao: null,
      },
      options: [
        {value: null, text: 'Selecione um muncipio'}
      ]
    }
  },
  mounted () {
    this.getOptionsMunicipio()
  },
  methods: {
    async onSubmit (evt) {
      evt.preventDefault();

      const response = await TablesService.createTableData(this.form, this.table)

      if(response.error) {
        console.log(response.error)
      }
    },
    async getOptionsMunicipio() {
      var response = await TablesService.fetchMunicipios()
      response.data.forEach((element) => {
          this.options.push({value: element.id, text: element.nome})
      })
    }
  }
}
</script>

<style scoped>

</style>