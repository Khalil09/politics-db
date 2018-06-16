<template>
  <div class="box">
    <b-table striped hover :items="items"></b-table>
  </div>
</template>

<script>
  export default {
    name: 'DBTable',
    components: {},
    props: {
      items: {
        type: Array,
        required: true,
        validator: function (value) {
          return [
            'syncing',
            'synced',
            'version-conflict',
            'error'
          ].indexOf(value) !== -1
        }
      }
    },
    data () {
      return {}
    }
  }
</script>

<style>
  .box {
    height: 100%;
    background-color: white;
  }
</style>
