json.array!(@model_shoes) do |model_shoe|
  json.extract! model_shoe, :id, :shoe_id
  json.url model_shoe_url(model_shoe, format: :json)
end
