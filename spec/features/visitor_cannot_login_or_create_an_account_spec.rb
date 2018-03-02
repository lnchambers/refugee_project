require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root path" do
    it "I can see a link to login" do
      visit root_path

      click_on "Login"

      expect(current_path).to eq(login_path)
    end

    it "I cannot create an account" do
      visit admin_new_user_path

      expect(page).to have_content("The page you were looking for doesn't exist")
    end
  end
end
