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
        <b-form-input id="data_de_nascInput" type="date" date-format="yyyy-MM-dd" v-model="form.data_de_nasc">
        </b-form-input>
      </b-form-group>

      <b-form-group id="genero" label="Genero:" label-for="generoInput">
        <b-form-select id="genero" v-model="form.genero" class="mb-3">
          <option :value="null">Selecione o Genero</option>
          <option value="homem">homem</option>
          <option value="mulher">mulher</option>
        </b-form-select>
      </b-form-group>

      <b-form-group id="cep" label="CEP:" label-for="cepInput">
        <b-form-input id="cepInput" type="number" v-model="form.cep_endereco">
        </b-form-input>
      </b-form-group>

      <b-form-group id="id_secao" label="Id Secao:" label-for="id_secaoInput">
        <b-form-input id="id_secaoInput" type="number" v-model="form.id_secao">
        </b-form-input>
      </b-form-group>

      <b-form-group id="id" label="Id Endereco:" label-for="idInput">
        <b-form-input id="idInput" type="number" v-model="form.id_endereco">
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
    return {}
  },
  methods: {
    async onSubmit (evt) {
      evt.preventDefault()
      console.log(this.form)
      const response = await TablesService.updateTableData(this.form, this.table, this.form.id)

      if (response.error) {
        console.log(response.error)
      }
    }
  }
}
</script>

<style scoped>

</style>
