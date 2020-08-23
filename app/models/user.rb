class User < ApplicationRecord
    has_many :posts
    has_secure_password
    validates :username, uniqueness: true, length: {in: 1..10}
    validates :password, presence: true, allow_nill: true
    validates :mail, uniqueness: true
end
