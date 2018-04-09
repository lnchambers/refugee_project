require 'rails_helper'

describe "As an admin" do
  before :each do
    @admin = create(:admin)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@admin)
    @request_1 = create(:request)
    @request_2 = create(:request)
  end
  describe "when I visit the request index" do
    it "I can see all requests that were made" do
      visit admin_requests_path

      expect(page).to have_content(@request_1.id)
      expect(page).to have_content(@request_2.id)
    end
  end
end
