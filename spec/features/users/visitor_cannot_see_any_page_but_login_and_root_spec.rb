require 'rails_helper'

describe "As a visitor" do
  describe "I am redirected when" do
    it "I try to visit the dashboard path" do
      lambda {
        visit dashboard_path
      }.should raise_error(ActionController::RoutingError)
    end

    it "I try to visit the request path" do
      lambda {
        visit new_request_path
      }.should raise_error(ActionController::RoutingError)
    end

    it "I try to visit the admin dashboard path" do
      lambda {
        visit admin_dashboard_path
      }.should raise_error(ActionController::RoutingError)
    end
  end
end
