class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :task_time_in_minutes
      t.string :in_progress_task
      t.string :in_progress_time_minutes


      t.timestamps null: false
    end
end
