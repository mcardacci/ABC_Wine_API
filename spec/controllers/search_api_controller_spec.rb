require 'rails_helper'

describe 'Search API', type: :request do
	it 'sends an list of matched searches' do
		product = FactoryGirl.create(:product)