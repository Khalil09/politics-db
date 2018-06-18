<template>
  <div>
    <b-form @submit="onSubmit">
      <b-form-group id="bairro" label="Bairro:" label-for="bairroInput">
        <b-form-input id="bairroInput" type="number" v-model="form.bairro">
        </b-form-input>
      </b-form-group>
      <b-form-group id="rua" label="Rua:" label-for="ruaInput">
        <b-form-input id="ruaInput" type="number" v-model="form.rua">
        </b-form-input>
      </b-form-group>
      <b-form-group id="cep" label="CEP:" label-for="cepInput">
        <b-form-input id="cepInput" type="number" v-model="form.cep">
        </b-form-input>
      </b-form-group>
      <b-form-group id="complemento" label="Complemento:" label-for="complementoInput">
        <b-form-input id="complementoInput" type="number" v-model="form.complemento">
        </b-form-input>
      </b-form-group>
      <b-form-group id="id_municipio" label="Id Municipio:" label-for="id_municipioInput">
        <b-form-input id="id_municipioInput" type="number" v-model="form.id_municipio">
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
  data () {
    return {
      form: {
        bairro: null,
        id: null,
        rua: null,
        cep: null,
        complemento: null,
        id_municipio: null,
        id_secao: null
      }
    }
  },
  methods: {
    onSubmit (evt) {
      evt.preventDefault();

      const response = await TablesService.createTableData(form, this.table)

      if(response.error) {
        console.log(response.error)
      }
    }
  }
}
</script>

<style scoped>

</style>