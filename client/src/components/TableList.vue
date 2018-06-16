<template>
  <div class="bd-sidebar col-md-3 col-xl-2 col-12">
    <div class="bd-search d-flex align-items-center">
      <input id="bd-search-input" type="text" placeholder="Search keywords..." value="" class="form-control" data-original-title="" title="">
      <button type="button" aria-label="Toggle docs navigation" class="bd-search-docs-toggle d-md-none p-0 ml-3" aria-controls="bd-docs-nav" aria-expanded="true">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30" width="30" height="30" focusable="false">
          <title>Menu</title>
          <path stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" d="M4 7h22M4 15h22M4 23h22"></path>
        </svg>
      </button>
      <div aria-hidden="true" class="d-none" style="display: none;">
        <div></div>
        <div><span>Type something to start search</span></div>
      </div>
    </div>
    <nav id="bd-docs-nav" class="bd-links navbar-collapse collapse show" style="">
    </nav>
  </div>

  <!-- <div class="container-fluid bg">
    <div class="row flex-xl-nowrap2">

    </div>
  </div> -->
</template>

<script>
export default {
  name: 'TableList',
  components: {}
}
</script>

<style>
.container-fluid {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  background-color: green;
}

.row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -15px;
  margin-left: -15px;
}

.bd-sidebar {
  -webkit-box-ordinal-group: 1;
  -ms-flex-order: 0;
  order: 0;
  border-bottom: 1px solid rgba(0,0,0,.1);
  background-color: white;
}

.bd-search {
  position: relative;
  padding: 16px 15px;
  padding: 1rem 15px;
  margin-right: -15px;
  margin-left: -15px;
  border-bottom: 1px solid rgba(0,0,0,.05);
}

.bd-links {
  padding-top: 16px;
  padding-top: 1rem;
  padding-bottom: 16px;
  padding-bottom: 1rem;
  margin-right: -15px;
  margin-left: -15px;
}

.navbar-collapse {
  -ms-flex-preferred-size: 100%;
  flex-basis: 100%;
  -ms-flex-positive: 1;
  flex-grow: 1;
  -ms-flex-align: center;
  align-items: center;
}

.form-control {
  display: block;
  width: 100%;
  padding: 6px 12px;
  padding: .375rem .75rem;
  font-size: 16px;
  font-size: 1rem;
  line-height: 1.5;
  color: #495057;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: .25rem;
  transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
</style>
