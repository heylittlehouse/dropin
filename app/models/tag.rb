class Tag < ActiveRecord::Base
	has_many :events_tags
	has_many :events, through: :events_tags
	has_many :tags_users
	has_many :users, through: :tags_users

	validates :name, presence: true
	validates :name, uniqueness: true
end
