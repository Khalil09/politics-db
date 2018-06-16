<template>
  <div class="bd-sidebar">
    <nav id="bd-docs-nav" class="bd-links navbar-collapse collapse show" style="">
      <nav class="bd-links navbar-collapse collapse show" id="bd-docs-nav" style="">
        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>

        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>

        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>

        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>

        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>

        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>

        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>

        <div class="bd-toc-item active">
          <a href="/docs/" class="bd-toc-link nuxt-link-active">Getting started</a>
          <ul class="bd-sidenav nav">
          </ul>
        </div>
      </nav>
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

<style scoped>

.nav {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
}

li {
display: list-item;
text-align: -webkit-match-parent;
}

.bd-toc-item.active>.bd-toc-link {
color: rgba(0,0,0,.85);
}

.bd-links {
  padding-top: 16px;
  padding-top: 1rem;
  padding-bottom: 16px;
  padding-bottom: 1rem;
  margin-right: -15px;
  margin-left: -15px;
}

.bd-toc-link {
  display: block;
  padding: 4px 24px;
  padding: .25rem 1.5rem;
  font-weight: 500;
  color: rgba(0,0,0,.65);
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
