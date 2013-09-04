class CaloriesCalculator

  def calculate_calories(male, weight, height, age, activeness)
    bee = -1
    if male
      bee = 88.362 + (13.397 * weight) + (4.799 * height)-(5.677 * age)
    else
      bee = 447.593 + (9.247 * weight) + (3.098 * height)-(4.33 * age)
    end
    bmr = bee * activeness
    calories_needed = bmr.floor
    fat_needed = ((bmr * 0.25) / 9).floor
    proteins_needed = ((bmr * 0.25) / 4).floor
    carbohydrates_needed = ((bmr * 0.25) / 4).floor
    alcohol_needed = ((bmr * 0.25) / 7).floor

    [bee, bmr, calories_needed, fat_needed, proteins_needed, carbohydrates_needed, alcohol_needed]
  end

end