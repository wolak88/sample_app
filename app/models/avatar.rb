class Avatar < ActiveRecord::Base
	belongs_to :user
	before_save :calculate_calories
	validates :age, presence: true
	validates :height, presence: true
	validates :weight, presence: true
	validates :male, presence: true
	validates :activeness, presence: true
	validates :user_id, presence: true
	scope :males, where(male: true)
	
	private

	def calculate_calories
		puts "start of calculate_calories method"
		if male
			self.bee = 88.362+(13.397 * self.weight)+(4.799 * self.height)-(5.677 * self.age)
		else
			self.bee = 447.593+(9.247 * self.weight)+(3.098 * self.height)-(4.33 * self.age)
		end
		self.bmr = self.bee * self.activeness
		self.calories_needed = self.bmr.floor
		self.fat_needed = ((self.bmr*0.25)/9).floor
		self.proteins_needed=((self.bmr*0.25)/4).floor
		self.carbohydrates_needed=((self.bmr*0.25)/4).floor
		self.alcohol_needed=((self.bmr*0.25)/7).floor
		puts "end of calculate_calories method"
	end
	
end
