require 'rails_helper'

describe "As an Admin" do
  describe "when I visit /admin/requests?scoped=true" do
    it "I can see all requests made since my last sign on" do
      user = create(:user)
      admin = create(:admin, email: 'yepyep@yep.yep', username: 'Almighty Admin')
      request = create(:request, name: "Not me!", user: user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
      admin.last_sign_in_at = Time.now
      request_2 = create(:request, name: "Opakawagalaga", user: admin)
      request_3 = create(:request, name: "Hello", user: user)

      visit '/admin/requests?scoped=true'

      expect(page).to have_content(request_3.name)
      expect(page).to have_content(request_2.name)
      expect(page).to_not have_content(request.name)
    end
  end
end
