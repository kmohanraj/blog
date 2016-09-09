json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :date, :desc
  json.url picture_url(picture, format: :json)
end
