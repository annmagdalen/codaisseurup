require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "association with event" do
    let(:user) {create :user}
    let!(:event) {create :event, user: user}

    it "has many events" do
      event1=user.events.new
      event2=user.events.new

      expect(user.events).to include(event1)
      expect(user.events).to include(event2)
    end
  end
end
