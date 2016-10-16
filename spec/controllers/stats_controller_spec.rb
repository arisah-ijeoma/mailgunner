require 'rails_helper'

describe StatsController, type: :controller do
  describe 'http status' do
    it "has a response status of 200" do
      get :logs
      expect(response.status).to eq(200)
    end
  end
end