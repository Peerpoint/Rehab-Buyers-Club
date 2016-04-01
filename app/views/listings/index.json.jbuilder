json.array!(@listings) do |listing|
  json.extract! listing, :id, :status, :lead_type, :property_type, :location, :avr, :asking_price, :repair_cost, :profit
  json.url listing_url(listing, format: :json)
end
