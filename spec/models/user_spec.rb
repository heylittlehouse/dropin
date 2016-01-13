require 'rails_helper'

RSpec.describe User, type: :model do
	context "associations" do
    it {should have_many :hosted_events}
    it {should have_many :attended_events}
    it {should have_many :interests}
  end

  context "validations" do
  	context "presence" do
	    it {should validate_presence_of :first_name}
	    it {should validate_presence_of :last_name}
	    it {should validate_presence_of :email}
	    it {should validate_presence_of :password_digest}
  	end

  	context "uniqueness" do
	    User.new(first_name: 'Michael', last_name: 'Landon', password_digest: 'whatever', email: 'test@something.com').save!(validate: false)
	    # this method requires an instance in the db to work.
	    it {should validate_uniqueness_of :email}
	  end
  end

end