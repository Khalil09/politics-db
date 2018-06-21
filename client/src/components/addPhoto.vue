<template>
  <div>
    <h2>Faça um upload do candidato</h2>
    <vue-base64-file-upload
      class="v1"
      accept="image/png,image/jpeg"
      image-class="v1-image"
      input-class="v1-input"
      :max-size="customImageMaxSize"
      @size-exceeded="onSizeExceeded"
      @file="onFile"
      @load="onLoad" />
  </div>
</template>

<script>
import VueBase64FileUpload from 'vue-base64-file-upload'
import TablesService from '@/services/TablesService'

export default {
  name: 'AddPhoto',
  props: {
    candidato: {
      type: Object
    }
  },
  components: {
    VueBase64FileUpload
  },
  data () {
    return {}
  },
  mounted () {
    this.getStuff()
  },
  methods: {
    getStuff () {
      console.log(this.candidato) // file object
    },
    onFile (file) {
      console.log(this.candidato) // file
    },

    async onLoad (dataUri) {
      var req = {
        id: this.candidato.id,
        foto: dataUri
      }

      var response = await TablesService.addPhotoToCandidato(req)
      if (response.error) {
        console.log(response.error)
      }
    },

    onSizeExceeded (size) {
      alert(`Image ${size}Mb size exceeds limits of ${this.customImageMaxSize}Mb!`)
    }
  }
}
</script>

<style>
.v1-image {
  width: 100%;
}
</style>
