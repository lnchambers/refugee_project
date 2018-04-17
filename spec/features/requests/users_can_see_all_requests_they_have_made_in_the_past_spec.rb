require 'rails_helper'

describe "As a user" do
  describe "when I visit my dashboard page" do
    it "I can see all requests I have made in the past" do
      user = create(:user)
      user_2 = User.create(username: "Username", first_name: "User", last_name: "Name", email: "username@username.username", password: "passwordpassword")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      request_1 = create(:request, user: user)
      request_2 = create(:request, user: user, name: 'Prooky')
      request_3 = create(:request, user: user_2, name: "pooky")

      visit root_path

      expect(page).to have_content(request_1.name)
      expect(page).to have_content(request_2.name)
      expect(page).to_not have_content(request_3.name)
    end
  end
end
