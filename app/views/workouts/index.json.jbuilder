json.array!(@workouts) do |workout|
  json.extract! workout, :id, :title, :subtitle, :equipment, :instructions, :repetitions, :sets
  json.url workout_url(workout, format: :json)
end
