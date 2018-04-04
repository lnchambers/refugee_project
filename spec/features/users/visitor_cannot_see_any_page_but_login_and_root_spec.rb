require 'rails_helper'

describe "As a visitor" do
  describe "I am redirected when" do
    it "I try to visit the dashboard path" do
      user = create(:user)
      visit "/dashboard/#{user.id}"

      expect(current_path).to eq(root_path)
    end

    it "I try to visit the request path" do
      visit new_request_path

      expect(current_path).to eq(root_path)
    end

    it "I try to visit the admin dashboard path" do
      visit admin_dashboard_path

      expect(current_path).to eq(root_path)
    end
  end
end
