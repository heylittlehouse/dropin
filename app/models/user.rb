class User < ActiveRecord::Base
	has_secure_password

	has_many :hosted_events, foreign_key: :user_id, class_name: "Event"
	has_many :events_users
	has_many :attended_events, through: :events_users, source: :event
	has_many :tags_users
	has_many :interests, through: :tags_users, source: :tag

	validates :first_name, :last_name, :email, :password_digest, presence: true
	validates :email, uniqueness: true

end
