require 'rails_helper'

describe RequestPresenter do
  it "#requests" do
    user = create(:user)
    request_1 = create(:request, user: user)
    user.last_sign_in_at = Time.now
    request_2 = create(:request, user: user, name: "Ops")
    request_3 = create(:request, user: user, name: "Oof")

    requested = Request.all
    params = {scoped: true}

    expect(RequestPresenter.new(params, user, requested).requests.count).to eq(2)
    expect(RequestPresenter.new(params, user, requested).requests[0].name).to eq("Ops")
    expect(RequestPresenter.new(params, user, requested).requests[1].name).to eq("Oof")
    expect(RequestPresenter.new(params, user, requested).requests[2]).to eq(nil)
  end
end
