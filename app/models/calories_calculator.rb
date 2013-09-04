class CaloriesCalculator

  # all params are required : male, weight, height, age, activeness
  def self.calculate(params)
    bee = BeeCalculator.calculate_bee(params)
    bmr = bee * params[:activeness]
    calories_needed = bmr.floor
    fat_needed = ((bmr * 0.25) / 9).floor
    proteins_needed = ((bmr * 0.25) / 4).floor
    carbohydrates_needed = ((bmr * 0.25) / 4).floor
    alcohol_needed = ((bmr * 0.25) / 7).floor

    {
        bee: bee,
        bmr: bmr,
        calories_needed: calories_needed,
        fat_needed: fat_needed,
        proteins_needed: proteins_needed,
        carbohydrates_needed: carbohydrates_needed,
        alcohol_needed: alcohol_needed
    }
  end

end