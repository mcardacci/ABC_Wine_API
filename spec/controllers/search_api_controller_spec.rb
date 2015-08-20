require 'rails_helper'

describe 'Search API', type: :request do
  it 'sends an list of matched searches' do
    product = FactoryGirl.create(:product)

    get "/api/beta/JSON?search=#{product.name}"
    expect(response).to have_http_status(:success)

    json = JSON.parse(response.body)
    expect(json.first['name']).to eq product.name
  end
end

describe SearchApiController do
  describe 'put' do
    it 'updates a product' do
      product = FactoryGirl.create(:product)
      new_attributes = { :name => 'meow' }

      put search_path + "/#{product.rating}", "{new_attributes}"

      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json['id']).to eq product.rating
      expect(json.first['name']).to eq 'meow'
    end
  end
end
