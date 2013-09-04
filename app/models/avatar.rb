class Avatar < ActiveRecord::Base
	belongs_to :user

	validates :age, presence: true
	validates :height, presence: true
	validates :weight, presence: true
	validates :male, presence: true
	validates :activeness, presence: true
	validates :user_id, presence: true

  before_save :calculate_and_set_calories

	scope :males, where(male: true)

	private

    def calculate_and_set_calories
      params = {male: self.male, weight: self.weight, height: self.height, age: self.age, activeness: self.activeness}
      update_attributes!(Calculators::Calories.calculate(params))
    end

end
