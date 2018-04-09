require 'rails_helper'

describe "As a User" do
  describe "when I visit the new request page" do
    it "I can see a form to submit a request with all the attributes" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      visit new_request_path

      expect(page).to have_content("Age")
      expect(page).to have_content("Name")
      expect(page).to have_content("Gender")
      expect(page).to have_content("Country of origin")
      expect(page).to have_content("Group size")
      expect(page).to have_content("Country of separation")
    end
  end
end
