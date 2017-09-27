require 'rails_helper'


RSpec.describe UsersController, type: :controller do
  let(:params) {{user: { name: "John", email: "John@johnny.com", password: "bro"}}}

  it "goes to corret place" do
    get 'index'
    assert_response :success
  end

  # it "creates a user" do
  #   post :create, params: params
  #   assert response.ok?
  #   expect(User.find_by(email: "John@johnny.com")).to be_present
  # end
  #
  # it "will not create a user without required information" do
  #   post :create, params: {user: { name: "John"}}
  #   expect(json_body["message"]).to eq("Please enter correct information")
  # end
  #
  # it "destroys a user" do
  #   post :create, params: params
  #   assert response.ok?
  #   john = User.find_by(email: "John@johnny.com")
  #   delete :destroy, params: {id: john.id}
  #   expect(json_body["message"]).to eq("Account Deleted")
  # end
end
