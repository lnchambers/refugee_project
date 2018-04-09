require 'rails_helper'

describe "As a user" do
  describe "when I visit my dashboard page" do
    it "I can see all requests I have made in the past" do
      user = create(:user)
      user_2 = User.create(username: "Username", first_name: "User", last_name: "Name", email: "username@username.username", password: "passwordpassword")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      request_1 = create(:request, user: user)
      request_2 = create(:request, user: user)
      request_3 = create(:request, user: user_2)

      visit "/dashboard/#{user.id}"

      expect(page).to have_content(request_1.id)
      expect(page).to have_content(request_2.id)
      expect(page).to_not have_content(request_3.id)
    end
  end
end
