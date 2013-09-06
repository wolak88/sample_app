json.array!(@trainings) do |training|
  json.extract! training, :name, :description, :overall_difficulty
  json.url training_url(training, format: :json)
end