require 'rails_helper'

RSpec.describe Tag, type: :model do
	context "associations" do
    it {should have_many :events}
    it {should have_many :users}
  end

  context "validations" do
  	context "presence" do
	    it {should validate_presence_of :name}
  	end

  	context "uniqueness" do
	    it {should validate_uniqueness_of :name}
	  end
  end

end