require 'rails_helper'

RSpec.describe Event, type: :model do
	context "associations" do
    it {should have_many :tags}
    it {should have_many :attendees}
    it {should belong_to :host}
  end

end