require "rails_helper"

describe "As a visitor" do
  describe "when I visit the root path" do
    it "I can see a link to login" do
        visit root_path

        click_on "Login"

        expect(current_path).to eq(new_user_session_path)
    end

    it "I cannot create an account" do
      lambda {
        visit new_admin_user_path
      }.should raise_error(ActionController::RoutingError)
    end
  end
end
