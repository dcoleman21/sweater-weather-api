require 'rails_helper'

RSpec.describe 'Trail request' do
  it "returns json data of trail data for location" do
    get '/api/v1/trails?location=denver,co'

    expect(response).to be_successful
    # trails = JSON.pars(response.body, symbolize_names: true)
  end
end
