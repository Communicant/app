json.array!(@users) do |user|
  json.extract! user, :id, :type, :username, :password_digest, :email, :first_name, :last_name, :address, :phone_number, :case_number, :case_id
  json.url user_url(user, format: :json)
end
