json.array!(@coaches) do |coach|
  json.extract! coach, :user_id, :training_id
  json.url coach_url(coach, format: :json)
end