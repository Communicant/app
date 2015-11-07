json.array!(@payments) do |payment|
  json.extract! payment, :id, :title, :amount, :parent_id, :created_at, :updated_at, :paid_at, :cost_id
  json.url payment_url(payment, format: :json)
end
