require 'rails_helper'

describe "view event details" do
  let(:event) { create :event}

  it "shows event details" do
    visit event_url(event)
    expect(page).to have_content(event.start_at)
  end
end
