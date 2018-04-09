require 'rails_helper'

describe "As a visitor" do
  describe "when I visit the login page" do
    it "I can log in" do
      user = create(:user)
      visit new_user_session_path

      fill_in "user_email", with: user.email
      fill_in "user_password", with: user.password
      click_on "Log in"

      expect(page).to have_content("Welcome, #{user.first_name}")
    end
  end
end
