json.array!(@builders) do |builder|
  json.extract! builder, :exercise_id, :training_id
  json.url builder_url(builder, format: :json)
end