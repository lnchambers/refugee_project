require 'rails_helper'

describe "As an admin" do
  before :each do
    @admin = create(:admin)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@admin)
  end
  describe "when I visit my dashboard page" do
    it "I can see a link to create a new user" do
      visit admin_dashboard_path

      click_on "Create new User"

      expect(current_path).to eq("/admin/users/new")
    end

    it "I can see a link to view all requests" do
      visit admin_dashboard_path

      click_on "See past requests"

      expect(current_path).to eq("/admin/requests")
    end
  end
end
