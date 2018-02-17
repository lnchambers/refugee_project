require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root path" do
    it "I can click on a link to sign up" do
      visit root_path

      click_on "Sign Up"

      expect(page).to have_content("Create a new account here")
    end

    it "I can see the home page content" do
      visit root_path

      expect(page).to have_content("refugee_project.")
      expect(page).to have_content("About Us")
    end
  end
end
