class User < ActiveRecord::Base
	#user has many posts and only that user can delete post
	has_many :posts, dependent: :destroy
	has_secure_password
end
