class User < ActiveRecord::Base
	has_many :hosted_events, class_name: 'Event'
	has_many :events_users
	has_many :attended_events, through: :events_users, class_name: 'Event'
	has_many :tags_users
	has_many :interests, through: :tags_users, class_name: 'Tag'

	has_secure_password
end
