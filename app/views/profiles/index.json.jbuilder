json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :email, :phone_number, :child_name, :case_number, :mediator_name
  json.url profile_url(profile, format: :json)
end
