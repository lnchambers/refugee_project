require 'rails_helper'

describe "As a visitor" do
  describe "I am find a 404 when" do
    it "I try to visit the request path" do
      lambda {
        visit new_request_path
      }.should raise_error(ActionController::RoutingError)
    end
  end
end
