class Training < ActiveRecord::Base
	has_many :builders, dependent: :destroy
	has_many :exercises, through: :builders
	has_many :coaches
	has_many :users, through: :coaches
end
