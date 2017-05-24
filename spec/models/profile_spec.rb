require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe ".order_by_initial" do

    let(:profile1) {create :profile, first_name: "Sander"}
    let(:profile2) {create :profile, first_name: "Stefan"}
    let(:profile3) {create :profile, first_name: "Wouter"}

    it "return list of names in alphabetic order" do
      expect(Profile.order_by_initial).to match_array [profile1, profile2, profile3]
    end
  end
end
