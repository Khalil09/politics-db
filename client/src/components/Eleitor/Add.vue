<template>
  <div>
    <b-form @submit="onSubmit">
      <b-form-group id="titulo_eleitor" label="Titulo Eleitor:" label-for="titulo_eleitorInput">
        <b-form-input id="titulo_eleitorInput" type="number" v-model="form.titulo_eleitor">
        </b-form-input>
      </b-form-group>
      <b-form-group id="nome" label="Nome:" label-for="nomeInput">
        <b-form-input id="nomeInput" type="text" v-model="form.nome">
        </b-form-input>
      </b-form-group>
      <b-form-group id="data_de_nasc" label="Data Nascimento:" label-for="data_de_nascInput">
        <b-form-input id="data_de_nascInput" type="date" v-model="form.data_de_nasc">
        </b-form-input>
      </b-form-group>
      <b-form-group id="genero" label="Genero:" label-for="generoInput">
        <b-form-input id="generoInput" type="text" v-model="form.genero">
        </b-form-input>
      </b-form-group>
      <b-form-group id="bairro" label="Bairro:" label-for="bairroInput">
        <b-form-input id="bairroInput" type="text" v-model="form.bairro">
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
        <b-form-input id="complementoInput" type="text" v-model="form.complemento">
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
        titulo_eleitor: null,
        nome: null,
        data_de_nasc: null,
        genero: null,
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