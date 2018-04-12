require 'rails_helper'

describe "As a User" do
  describe "when I visit the new request page" do
    it "I can put in a new request and receive a response from the API" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit new_request_path

      fill_in "Age", with: 30
      fill_in "Name", with: "Richard Branson"
      fill_in "Group size", with: 1
      click_on "Create Request"

      expect(page).to have_content("Request sent successfully, retrieving results")
      expect(page).to have_content("Status: Deceased")
      expect(page).to have_content("See More Info?")

      find(".info-button").click

      expect(page).to have_content("Richard Branson")
      expect(page).to have_content(30)
      expect(page).to have_content("Cis-Male")
      expect(page).to have_content("Afghanistan")
      expect(page).to have_content(1)
    end
  end
end
