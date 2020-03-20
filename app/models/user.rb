class User < ApplicationRecord

  has_many :orders

  def self.from_omniauth(auth_data)
  	user = find_or_create_by(uid: auth_data["uid"], provider: auth_data["provider"])
  	user.name = auth_data["info"]["name"]
  	user.email = auth_data["info"]["email"]
  	user.save!
  	user

	#create_or_find_by(provider: auth_data["provider"], uid: auth_data["uid"], name: auth_data["info"]["name"])
  end

end
