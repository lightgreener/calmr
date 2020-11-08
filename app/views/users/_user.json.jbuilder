json.extract! user, :id, :email, :name, :password_digest, :gender,  :admin, :created_at, :updated_at, :age, :image

json.url user_url(user, format: :json)
