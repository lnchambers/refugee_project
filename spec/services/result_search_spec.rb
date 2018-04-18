require 'rails_helper'

describe ResultSearch do
  it '#update_request' do
    user = create(:user)
    request = create(:request, status: "Pending", user: user)

    ResultSearch.new(request).update_request

    expect(request.status).to eq("Deceased")
  end
end
