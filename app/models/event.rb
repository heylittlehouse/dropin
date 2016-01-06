class Event < ActiveRecord::Base
	belongs_to :host, class_name: "User", foreign_key: :user_id
	has_many :events_tags
	has_many :tags, through: :events_tags
	has_many :events_users
	has_many :attendees, through: :events_users, source: :user
end