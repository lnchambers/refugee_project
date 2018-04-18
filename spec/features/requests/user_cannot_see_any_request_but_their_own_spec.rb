require 'rails_helper'

describe "As a User" do
  describe "When I try to visit the admin requests index page" do
    it "I get a 404" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      lambda {
        visit admin_requests_path
      }.should raise_error(ActionController::RoutingError)
    end
  end
end
