json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :date, :time, :parent_id, :child_id, :mediator_id, :pending
  json.url event_url(event, format: :json)
end
