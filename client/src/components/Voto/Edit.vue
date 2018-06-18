<template>
  <div>
    <b-form @submit="onSubmit" @reset="onReset" v-if="show">
      <b-form-group id="titulo_eleitor"
                    label="Titulo Eleitor:"
                    label-for="9812333">
        <b-form-input id="titulo_eleitorInput"
                      type="number"
                      v-model="form.titulo_eleitor"
                      required
                      placeholder="Enter email">
        </b-form-input>
      </b-form-group>
      <b-form-group id="exampleInputGroup2"
                    label="Your Name:"
                    label-for="exampleInput2">
        <b-form-input id="exampleInput2"
                      type="text"
                      v-model="form.name"
                      required
                      placeholder="Enter name">
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
        titulo_eleitor: 9812333,
        nome:           "Teste",
        data_de_nasc:   "1996-09-30",
        genero:         "homem",
        bairro:         "Bairro teste",
        id:             5234,
        rua:            "Tom jobim",
        cep:            235236,
        complemento:    "blabla",
        id_municipio:   1,
        id_secao:       1
      },
      show: true
    }
  },
  methods: {
    onSubmit (evt) {
      evt.preventDefault();

      alert(JSON.stringify(this.form));
    },
    onReset (evt) {
      evt.preventDefault();
      /* Reset our form values */
      this.form.email = '';
      this.form.name = '';
      this.form.food = null;
      this.form.checked = [];
      /* Trick to reset/clear native browser form validation state */
      this.show = false;
      this.$nextTick(() => { this.show = true });
    }
  }
}
</script>

<style scoped>

</style>
