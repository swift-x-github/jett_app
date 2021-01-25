require 'rails_helper'

RSpec.describe "Sells", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/sell/index"
      expect(response).to have_http_status(:success)
    end
  end

end
