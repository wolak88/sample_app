class CaloriesCalculator

  # all params are required : male, weight, height, age, activeness
  def self.calculate_calories(params)
    bee = calculate_bee(params)
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

  private

    # params required : male, weight, height, age
    def self.calculate_bee(params)
      bee = -1
      if params[:male]
        bee = 88.362 + (13.397 * params[:weight]) + (4.799 * params[:height])-(5.677 * params[:age])
      else
        bee = 447.593 + (9.247 * params[:weight]) + (3.098 * params[:height])-(4.33 * params[:age])
      end
      bee
    end

end