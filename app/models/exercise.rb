class Exercise < ActiveRecord::Base
	has_many :builders
	has_many :trainings, through: :builders
end
