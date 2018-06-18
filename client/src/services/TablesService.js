import Api from '@/services/Api'

export default {
  fetchTables () {
    return Api().get('tables')
  },
  fetchTableData (table, id) {
    if (id == null) {
      return Api().get(table)
    } else {
      return Api().get(table + '/' + id)
    }
  },
  createTableData (req, table) {
    return Api().post(req, table + '/new')
  },
  updateTableData (req, table, id) {
    return Api().post(table + '/update/' + id, req)
  },
  removeTableData (table, id) {
    return Api().delete(table + '/' + id)
  },
  removeVoto (eleitor, candidato) {
    return Api().delete('voto/' + eleitor + '/' + candidato)
  }
}
