require 'rails_helper'

RSpec.describe 'Trail request' do
  it "returns json data of trail data for location" do
    # location = 'denver,co'
    # latitude = 39.738453
    # longitude = -104.984853

    get '/api/v1/trails?location=denver,co'

    expect(response).to be_successful
    trails = JSON.parse(response.body, symbolize_names: true)
  end
end
