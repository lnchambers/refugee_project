require 'rails_helper'

describe "As an admin" do
  before :each do
    admin = create(:admin)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
  end
  describe "when I visit the new user admin page" do
    it "I am able to create a new user" do
      visit new_admin_user_path

      fill_in "email", with: "opakaeupanifa@soulbeats.com"
      fill_in "first_name", with: "Opakawagalaga"
      fill_in "last_name", with: "Eupanifahorious"
      click_on "Sign up"

      expect(User.last.email).to eq("opakaeupanifa@soulbeats.com")
      expect(User.count).to eq(1)
      expect(page).to have_content("Email sent to opakaeupanifa@soulbeats.com to finish registration")
    end
  end
end
