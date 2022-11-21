class UserAddress < ApplicationRecord
	belongs_to :users
	belongs_to :addresses
end
