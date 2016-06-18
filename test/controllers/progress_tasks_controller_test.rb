require 'test_helper'

class ProgressTasksControllerTest < ActionController::TestCase
  setup do
    @progress_task = progress_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:progress_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create progress_task" do
    assert_difference('ProgressTask.count') do
      post :create, progress_task: { in_progress_task: @progress_task.in_progress_task, in_progress_time_minutes: @progress_task.in_progress_time_minutes }
    end

    assert_redirected_to progress_task_path(assigns(:progress_task))
  end

  test "should show progress_task" do
    get :show, id: @progress_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @progress_task
    assert_response :success
  end

  test "should update progress_task" do
    patch :update, id: @progress_task, progress_task: { in_progress_task: @progress_task.in_progress_task, in_progress_time_minutes: @progress_task.in_progress_time_minutes }
    assert_redirected_to progress_task_path(assigns(:progress_task))
  end

  test "should destroy progress_task" do
    assert_difference('ProgressTask.count', -1) do
      delete :destroy, id: @progress_task
    end

    assert_redirected_to progress_tasks_path
  end
end
