json.array!(@tasks) do |task|
  json.extract! task, :id, :task_name, :task_time_in_minutes
  json.url task_url(task, format: :json)
end
