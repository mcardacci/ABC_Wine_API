offset = 0

10.times do
  endpoint = "http://services.wine.com/api/beta2/service.svc/JSON/catalog?size=100&offset="
  endpoint += offset.to_s
  endpoint += "&apikey=#{ENV['API_KEY']}"
  product_list = JSON.parse(RestClient.get endpoint)
  list = product_list['Products']['List']

  list.each do |product|
    product_object = Product.new
    product_object.name = product['Name']
    product_object.description = product['Description']
    product_object.retail_price = product['PriceRetail']
    product_object.rating = product['Ratings']['HighestScore']
    product_object.vineyard = product['Vineyard']['Name'] if product['Vineyard']
    product_object.save
  end
  offset += 100
end