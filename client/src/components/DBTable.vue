<template>
  <div class="box">
    <b-table striped hover :items="items" :fields="fields">
      <template slot="actions" slot-scope="row">
      <!-- we use @click.stop here to prevent emitting of a 'row-clicked' event  -->
        <b-button size="sm" @click.stop="row.toggle" class="mr-2">
         {{ row.detailsShowing ? 'Hide' : 'Show'}} Details
        </b-button>
      </template>
      <template slot="row-details" slot-scope="row">
        <b-card>
          <b-row class="mb-2">
            <b-col sm="3" class="text-sm-right"><b>Age:</b></b-col>
            <b-col>{{ row.item.age }}</b-col>
          </b-row>
          <b-row class="mb-2">
            <b-col sm="3" class="text-sm-right"><b>Is Active:</b></b-col>
            <b-col>{{ row.item.isActive }}</b-col>
          </b-row>
          <b-button size="sm" @click="row.toggle">Hide Details</b-button>
        </b-card>
      </template>
    </b-table>
  </div>
</template>

<script>
  export default {
    name: 'DBTable',
    components: {},
    props: {
      dt: {
        type: Array,
        required: true
      }
    },
    data () {
      return {
        fields: getFields(this.dt),
        items: this.dt
      }
    }
  }

  function getFields (items) {
    let res = Object.keys(items[0])

    res.push("actions")
    console.log(res)

    return res
  } 
</script>

<style>
  .box {
    background-color: white;
  }
</style>
