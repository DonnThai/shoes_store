json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :name, :category_id, :company_id, :description, :price
  json.url shoe_url(shoe, format: :json)
end
