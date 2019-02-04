class User < ApplicationRecord
  has_many :favorite_lists
  has_secure_password


 
end
