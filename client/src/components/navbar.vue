<template>
  <b-navbar toggleable="md" type="dark" variant="secondary">
    <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>
    <b-navbar-brand v-bind:to="'/'">NavBar</b-navbar-brand>

    <b-collapse is-nav id="nav_collapse">

      <b-navbar-nav>
        <b-nav-item v-bind:to="'/posts'">Posts</b-nav-item>
        <b-nav-item v-bind:to="'/about'">About Us</b-nav-item>
      </b-navbar-nav>
        <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">

        <b-nav-form>
          <b-form-input size="sm" class="mr-sm-2" type="text" placeholder="Search"/>
          <b-button size="sm" class="my-2 my-sm-0" type="submit">Search</b-button>
        </b-nav-form>

        <b-nav-item-dropdown right>
          <!-- Using button-content slot -->
          <template slot="button-content">
            <em>User</em>
          </template>
          <b-dropdown-item href="#">Profile</b-dropdown-item>
          <b-dropdown-item href="#">Signout</b-dropdown-item>
        </b-nav-item-dropdown>
      </b-navbar-nav>

    </b-collapse>
  </b-navbar>
</template>

<script>
export default {
  name: 'navbar',
  data () {
    return {}
  }
}
</script>
