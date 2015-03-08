json.array!(@testa) do |testum|
  json.extract! testum, :id, :t
  json.url testum_url(testum, format: :json)
end
