import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import About from '@/components/About'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/about',
      name: 'About',
      component: About
    },
    {
      path: '/candidato',
      name: 'Candidato',
      component: Home
    },
    {
      path: '/cargo',
      name: 'Cargo',
      component: Home
    },
    {
      path: '/chapa',
      name: 'Chapa',
      component: Home
    },
    {
      path: '/doacao',
      name: 'Doacao',
      component: Home
    },
    {
      path: '/eleitor',
      name: 'Eleitor',
      component: Home
    },
    {
      path: '/empresa',
      name: 'Empresa',
      component: Home
    },
    {
      path: '/endereco',
      name: 'Endereco',
      component: Home
    },
    {
      path: '/estado',
      name: 'Estado',
      component: Home
    },
    {
      path: '/local',
      name: 'Local',
      component: Home
    },
    {
      path: '/mesario',
      name: 'Mesario',
      component: Home
    },
    {
      path: '/municipio',
      name: 'Municipio',
      component: Home
    },
    {
      path: '/partido',
      name: 'Partido',
      component: Home
    },
    {
      path: '/secao',
      name: 'Secao',
      component: Home
    },
    {
      path: '/urna',
      name: 'Urna',
      component: Home
    },
    {
      path: '/voto',
      name: 'Voto',
      component: Home
    },
    {
      path: '/zona',
      name: 'Zona',
      component: Home
    }
  ]
})
