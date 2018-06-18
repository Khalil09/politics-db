<template>
  <div>
    <navbar></navbar>
    <div class="wrapper">
      <div class="navi">
        <ParticlesJS></ParticlesJS>
      </div>
      <div class="infoi">
        <CardsUs></CardsUs>
      </div>
    </div>
  </div>
</template>

<script>
import Navbar from '@/components/navbar.vue'
import ParticlesJS from '@/components/Particles'
import CardsUs from '@/components/CardsUs'

export default {
  name: 'About',
  components: {
    'navbar': Navbar,
    'ParticlesJS': ParticlesJS,
    'CardsUs': CardsUs
  },
  data () {
    return {}
  }
}
</script>

<style>
/*
*  position: relative gives a new position context
*/
.wrapper {
  position: relative;
  padding-bottom: 40px;
}

/*
*  The .navi properties are for styling only
*  These properties can be changed or removed
*/
.navi {
  /* background-color: #eaeaea; */
  height: 40px;
}

/*
*  Position the #infoi element in the top-right
*  of the .wrapper element
*/
#infoi {
  position: absolute;
  top: 0;
  right: 0;
  /*
  *  Styling only, the below can be changed or removed
  *  depending on your use case
  */
  height: 20px;
  padding: 10px 10px;
}
</style>
