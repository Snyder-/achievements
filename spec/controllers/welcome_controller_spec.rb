require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      @ach = FactoryGirl.create(:achievement, title: 'Deadpool')
      get :index

      expect(response).to have_http_status(:success)
      expect(assigns(:achievements).first.title).to eq('Deadpool')
    end
  end

end
