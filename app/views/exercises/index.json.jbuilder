json.array!(@exercises) do |exercise|
  json.extract! exercise, :name, :description, :difficulty, :time, :imageurl
  json.url exercise_url(exercise, format: :json)
end