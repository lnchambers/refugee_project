require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:role) }
  it { should have_many(:requests) }

  it "#has_requests?" do
    user = create(:user)

    expect(user.has_requests?).to be(false)
  end

  it "#requests_since_last_sign_in" do
    user = create(:user)
    request_1 = create(:request, user: user)
    user.last_sign_in_at = Time.now
    request_2 = create(:request, user: user, name: "Ops")
    request_3 = create(:request, user: user, name: "Oof")

    expect(user.requests_since_last_sign_in).to be(2)
  end
end
