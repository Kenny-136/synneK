require 'pg'
def run_sql(sql, params = [])
    db = PG.connect(dbname: 'planets_app')
    data = db.exec_params(sql, params)
    db.close
    data
end
  