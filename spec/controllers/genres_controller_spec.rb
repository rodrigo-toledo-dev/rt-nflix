require 'rails_helper'

RSpec.describe GenresController, type: :controller do

  describe "GET #add_profile" do
    it "returns http success" do
      get :add_profile
      expect(response).to have_http_status(:success)
    end
  end

end
