require "rails_helper"

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end

    it "has a title" do
      get "/"
      expect(response.body).to include("ProPay")
    end

    it "has a login button" do
      get "/"
      expect(response.body).to include("Login")
    end

    it "has a sign up button" do
      get "/"
      expect(response.body).to include("Sign Up")
    end
  end
end
