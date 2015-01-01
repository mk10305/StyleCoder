json.array!(@items) do |item|
  json.extract! item, :id, :name, :cost, :image, :fit, :season, :notes, :description, :user_id
  json.url item_url(item, format: :json)
end
