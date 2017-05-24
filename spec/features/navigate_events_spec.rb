require 'rails_helper'

describe "navigating between detail to index page for event" do
  before {login_as user}

  let(:user) {create :user}
  let!(:event) {create :event, user: user}


  it "allows navigation" do
    visit event_url(event)
    click_link "Back"
    expect(current_path).to eq(events_path)
  end
end
