json.array!(@slates) do |slate|
  json.extract! slate, :id, :image, :card_title, :card_description, :title
  json.url slate_url(slate, format: :json)
end
