require 'rails_helper'


RSpec.describe Devise::RegistrationsController, type: :controller do
  let(:params) {{user: { name: "John", email: "John@johnny.com", password: "bro"}}}

  before(:each) {
   @request.env["devise.mapping"] = Devise.mappings[:user]
 }

  it "creates a user" do
    post 'create', params: params
    assert response.ok?
  end

  # it "destroys a user" do
  #   post :create, params: params
  #   assert response.ok?
  #   john = User.find_by(email: "John@johnny.com")
  #   delete :destroy, params: {id: john.id}
  #   expect(json_body["message"]).to eq("Account Deleted")
  # end
end
