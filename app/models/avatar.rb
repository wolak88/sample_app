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
      # 1. calculate needed bmr, bee etc.
      params = {male: self.male, weight: self.weight, height: self.height, age: self.age, activeness: self.activeness}
      result = CaloriesCalculator.calculate_calories(params)

      # 2. modify Avatar
      update_attributes!(result)
    end

end
