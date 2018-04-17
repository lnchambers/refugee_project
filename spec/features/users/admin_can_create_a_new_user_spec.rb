require 'rails_helper'

describe "As an admin" do
  before :each do
    @admin = create(:admin)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@admin)
  end
  describe "when I visit my dashboard page" do
    it "I can see a link to create a new user" do
      visit root_path

      click_on "Register an Investigator"

      expect(current_path).to eq("/admin/users/new")
    end

    it "I can see a link to view all requests" do
      visit root_path

      click_on "See all requests"

      expect(current_path).to eq("/admin/requests")
    end
  end
end
