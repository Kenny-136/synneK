def all_jokes
    run_sql("SELECT * FROM jokes")
end

def create_jokes(user_id, jokes)
    run_sql("INSERT INTO jokes(user_id, jokes) VALUES($1, $2)", [user_id, jokes])
end

def get_joke(id)
    run_sql("SELECT * FROM jokes WHERE jokes_id = $1", [id])[0]
end

def improvise_joke(user_id, jokes, jokes_id)
    run_sql("UPDATE jokes SET user_id = $1, jokes = $2 WHERE jokes_id = $3", [user_id, jokes, jokes_id])
end

def delete_joke(id)
    run_sql("DELETE FROM jokes WHERE jokes_id = $1", [id])
end