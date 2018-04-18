require 'rails_helper'

describe "As an admin" do
  before :each do
    @admin = create(:admin)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@admin)
    @request_1 = create(:request, user: @admin, name: "Opakawagalaga")
    @request_2 = create(:request, user: @admin, name: "Hello")
    visit admin_requests_path
  end
  describe "when I visit the request index" do
    it "I can see all requests that were made" do
      expect(page).to have_content(@request_1.name)
      expect(page).to have_content(@request_2.name)
    end

    it "I can click on the request name and go to the request show page" do
      click_on @request_1.name

      expect(current_path).to eq(request_path(@request_1))
    end
  end
end
