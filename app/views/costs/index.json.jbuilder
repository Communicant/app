json.array!(@costs) do |cost|
  json.extract! cost, :id, :title, :due_date, :amount, :parent_id
  json.url cost_url(cost, format: :json)
end
