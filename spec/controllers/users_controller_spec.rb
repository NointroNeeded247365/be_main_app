require 'rails_helper'


RSpec.describe UsersController, type: :controller do
  let(:params) {{user: { first_name: "John", last_name: "Johnny", email: "john@johnny.com", password: "longpassword"}}}

  it "creates a user" do
    post :create, params: params
    assert response.ok?
    expect(User.find_by(email: "john@johnny.com")).to be_present
  end
  #
  it "will not create a user without required information" do
    post :create, params: {user: { name: "John"}}
    expect(User.all.length).to eq(0)
  end
  #
  it "destroys a user" do
    post :create, params: params
    assert response.ok?
    john = User.find_by(email: "john@johnny.com")
    expect(User.find_by(email: "john@johnny.com")).to be_present
    delete :destroy, params: {id: john.id}
    expect(User.all.length).to eq(0)
  end
end
