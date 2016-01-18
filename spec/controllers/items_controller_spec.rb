require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { create(:user) }
  let(:my_item) { create(:item, user: my_user) }

  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = FactoryGirl.create(:user, email: Faker::Internet.email)
    sign_in user
  end

  describe "POST create" do

    it "increases the number of items by 1" do
      expect{ post :create, item: {name: Faker::App.name }}.to change(Item, :count).by(1)
    end

    it "returns HTTP status found" do
      post :create, id: my_item.id, item: {name: Faker::App.name }
      expect(response).to have_http_status(:found)
    end
  end

  describe "DELETE destroy" do
    it "deletes the comment" do
      delete :destroy, format: :js, user_id: my_user.id, id: my_item.id
      count = Item.where({id: my_item.id}).count
      expect(count).to eq 0
    end

    it "redirects to the user show view" do
      delete :destroy, format: :js, user_id: my_item.user.id, id: my_item.id
      expect(respose).to have_http_status(:success)
    end
  end
end
