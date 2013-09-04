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
      bee, bmr, calories_needed, fat_needed, proteins_needed, carbohydrates_needed, alcohol_needed = CaloriesCalculator.calculate_calories(self.male, self.weight, self.height, self.age, self.activeness)

      # 2. modify Avatar
      self.bee = bee
      self.bmr = bmr
      self.calories_needed = calories_needed
      self.fat_needed = fat_needed
      self.proteins_needed = proteins_needed
      self.carbohydrates_needed = carbohydrates_needed
      self.alcohol_needed = alcohol_needed
    end

end
