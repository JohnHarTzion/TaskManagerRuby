class CreateProgressTasks < ActiveRecord::Migration
  def change
    create_table :progress_tasks do |t|
      t.string :in_progress_task
      t.string :in_progress_time_minutes

      t.timestamps null: false
    end
  end
end
