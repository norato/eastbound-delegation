json.array!(@delegates) do |delegate|
  json.extract! delegate, :id, :state, :pre_comma, :post_comma, :primary_funding_url
  json.url delegate_url(delegate, format: :json)
end
