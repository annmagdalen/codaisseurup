require 'rails_helper'

describe "List of events for the current user" do
  before { login_as user}

  let(:user) {create :user}
  let(:user2) {create :user}
  let!(:event1) {create :event, name: "Hello", user: user}
  let!(:event2) {create :event, name: "Hi", user: user2}

  it "shows all events" do
    visit events_url
    expect(page).to have_content(event1.name)
  end

  it "shows events for user 2" do
    visit events_url
    expect(page).not_to have_content(event2.name)
  end
end
