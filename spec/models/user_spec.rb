require 'rails_helper'

RSpec.describe User, type: :model do
	context "associations" do
    it {should have_many :hosted_events}
    it {should have_many :attended_events}
    it {should have_many :interests}
  end

  context "validations" do
    it {should validate_presence_of :first_name}
    it {should validate_presence_of :last_name}
    it {should validate_presence_of :email}
    it {should validate_presence_of :password_digest}
  end

end