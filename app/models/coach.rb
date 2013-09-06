class Coach < ActiveRecord::Base
	belongs_to :user
	belongs_to :training
end
