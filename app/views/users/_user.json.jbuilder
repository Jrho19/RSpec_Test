json.extract! user, :id, :name, :email, :code_school_id, :created_at, :updated_at
json.url user_url(user, format: :json)