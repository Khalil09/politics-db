import Api from '@/services/Api'

export default {
  fetchTable (name) {
    return Api().get(name)
  }

  fetchTableOcc(table, id){
    return Api().get(table + '/' + id)
  }
}
