require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root path" do
    it "I can see a link to login" do
        visit root_path

        expect(page).to have_content("Login")
    end

    it "I cannot create an account" do
      lambda {
        visit new_admin_user_path
      }.should raise_error(ActionController::RoutingError)
    end
  end
end
