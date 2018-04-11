require 'rails_helper'

describe "As a User" do
  describe "when I visit the new request page" do
    it "I can put in a new request and receive a response from the API" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit new_request_path

      fill_in "Age", with: 30
      fill_in "Name", with: "Richard Branson"
      # select "amab", from: "Gender"
      # select "Afghanistan", from: "Country of origin"
      fill_in "Group size", with: 1
      # select "Afghanistan", from: "Country of seperation"
      click_on "Create Request"
binding.pry
      expect(page).to have_content("Request received")
    end
  end
end
