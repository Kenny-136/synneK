require 'pg'

def run_sql(sql, params = [])
    db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'dadjokes'})
    # db = PG.connect(dbname: 'dadjokes')
    data = db.exec_params(sql, params)
    db.close
    data
end