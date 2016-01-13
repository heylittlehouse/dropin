require 'rails_helper'

RSpec.describe Event, type: :model do
	context "associations" do
    it {should have_many :tags}
    it {should have_many :attendees}
    it {should belong_to :host}
  end

  context "validations" do
    it {should validate_presence_of :user_id}
    it {should validate_presence_of :latitude}
    it {should validate_presence_of :longitude}
    it {should validate_presence_of :start_time}
    it {should validate_presence_of :end_time}
  end

end