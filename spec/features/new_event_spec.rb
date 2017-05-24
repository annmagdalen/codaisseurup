require "rails_helper"

describe "New event" do
  before {login_as user}

  let(:user) {create :user, email: "current@user.com"}

  context "when description not present" do
    it "does not allow to add event" do
      visit events_url
      click_on "Add new event"
      fill_in "event_description", with: ""
      click_on "Save"
      expect(page).to have_content ""
    end
  end

  context "when description present" do
    it "new event created" do
      visit events_url
      click_on "Add new event"
      fill_in "event_description", with: "t...."
      click_on "Save"
      expect(page).to have_content "Event successfully created"
    end
  end
end
