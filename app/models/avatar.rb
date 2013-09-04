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
      bee, bmr, calories_needed, fat_needed, proteins_needed, carbohydrates_needed, alcohol_needed = calculate_calories(self.male, self.weight, self.height, self.age, self.activeness)

      # 2. modify Avatar
      self.bee = bee
      self.bmr = bmr
      self.calories_needed = calories_needed
      self.fat_needed = fat_needed
      self.proteins_needed = proteins_needed
      self.carbohydrates_needed = carbohydrates_needed
      self.alcohol_needed = alcohol_needed
    end

    # this method does not use any Avatar attributes
    # this method does not modify Avatar
    # it operates only on this parameters (male, weight, height, age, activeness)
    def calculate_calories(male, weight, height, age, activeness)
      bee = -1
      if male
        bee = 88.362+(13.397 * weight)+(4.799 * height)-(5.677 * age)
      else
        bee = 447.593+(9.247 * weight)+(3.098 * height)-(4.33 * age)
      end
      bmr = bee * activeness
      calories_needed = bmr.floor
      fat_needed = ((bmr*0.25)/9).floor
      proteins_needed=((bmr*0.25)/4).floor
      carbohydrates_needed=((bmr*0.25)/4).floor
      alcohol_needed=((bmr*0.25)/7).floor

      [bee, bmr, calories_needed, fat_needed, proteins_needed, carbohydrates_needed, alcohol_needed]
    end
	
end
