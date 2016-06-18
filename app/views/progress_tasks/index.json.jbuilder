json.array!(@progress_tasks) do |progress_task|
  json.extract! progress_task, :id, :in_progress_task, :in_progress_time_minutes
  json.url progress_task_url(progress_task, format: :json)
end
