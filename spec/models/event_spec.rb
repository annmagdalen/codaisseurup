require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      event = Event.new(name: "")
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it "is invalid without a description" do
      event = Event.new(description: nil)
      event.valid?
      expect(event.errors).to have_key(:description)
    end

    it "is invalid with a description longer than 500 characters" do
      event = Event.new(description: "x"*501)
      event.valid?
      expect(event.errors).to have_key(:description)
    end
  end
end

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end

  describe "#bargain?" do
    let(:bargain_event) {create :event, price: 20}
    let(:non_bargain_event) {create :event, price: 40}

    it "returns true if price is less than 30" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
    let!(:event1) {create :event, price: 300}
    let!(:event2) {create :event, price: 200}
    let!(:event3) {create :event, price: 100}

    it "return list of events, cheapest first" do
      expect(Event.order_by_price).to match_array [event3, event2, event1]
    end
  end
end
