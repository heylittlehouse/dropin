require 'rails_helper'

RSpec.describe Tag, type: :model do
	context "associations" do
    it {should have_many :events}
    it {should have_many :users}
  end

end