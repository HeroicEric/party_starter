class User < ActiveRecord::Base
	validates_presence_of :name
	has_many :rsvps
	has_many :hostings
	has_many :events, through: :rsvps
	has_many :events, through: :hostings

	def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
