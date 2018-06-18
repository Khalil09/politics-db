<template>
  <div>
    <b-form @submit="onSubmit">
      <b-form-group id="id_eleitor" label="Id Secao:" label-for="id_secaoInput">
        <b-form-input id="id_eleitorInput" type="number" v-model="form.id_secao">
        </b-form-input>
      </b-form-group>
      <b-form-group id="id_candidato" label="Id Candidato:" label-for="idInput">
        <b-form-input id="id_candidatoInput" type="number" v-model="form.id">
        </b-form-input>
      </b-form-group>
      <b-form-group id="id_urna" label="Id Urna:" label-for="idInput">
        <b-form-input id="id_candidatoInput" type="number" v-model="form.id">
        </b-form-input>
      </b-form-group>
      <b-button type="submit" variant="primary">Submit</b-button>
      <b-button type="reset" variant="danger">Reset</b-button>
    </b-form>
  </div>
</template>

<script>
import TablesService from '@/services/TablesService'

var today = new Date();
var dd = today.getDate();


export default {
  data () {
    return {
      form: {
        data: dd,
        id_eleitor: null,
        id_candidato: null,
        id_urna: null
      }
    }
  },
  methods: {
    async onSubmit (evt) {
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