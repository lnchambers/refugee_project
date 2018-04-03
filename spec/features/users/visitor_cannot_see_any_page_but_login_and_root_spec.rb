require 'rails_helper'

describe "As a visitor" do
  describe "I am redirected when" do
    it "I try to visit the dashboard path" do
      visit dashboard_path

      expect(current_path).to eq(root_path)
      expect(page).to have_content("You do not have sufficient priviliges")
    end

    it "I try to visit the request path" do
      visit request_path

      expect(current_path).to eq(root_path)
      expect(page).to have_content("You do not have sufficient priviliges")
    end

    it "I try to visit the admin dashboard path" do
      visit admin_dashboard_path

      expect(current_path).to eq(root_path)
      expect(page).to have_content("You do not have sufficient priviliges")
    end
  end
end
