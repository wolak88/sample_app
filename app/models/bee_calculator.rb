class BeeCalculator

  # params required : male, weight, height, age
  def self.calculate_bee(params)
    if params[:male]
      88.362 + (13.397 * params[:weight]) + (4.799 * params[:height])-(5.677 * params[:age])
    else
      447.593 + (9.247 * params[:weight]) + (3.098 * params[:height])-(4.33 * params[:age])
    end
  end

end