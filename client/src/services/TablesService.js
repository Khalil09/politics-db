import Api from '@/services/Api'

export default {
  fetchTables () {
    return Api().get('tables')
  }
}
