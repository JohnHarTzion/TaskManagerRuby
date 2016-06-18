class ProgressTasksController < ApplicationController
  before_action :set_progress_task, only: [:show, :edit, :update, :destroy]

  # GET /progress_tasks
  # GET /progress_tasks.json
  def index
    @progress_tasks = ProgressTask.all
  end

  # GET /progress_tasks/1
  # GET /progress_tasks/1.json
  def show
  end

  # GET /progress_tasks/new
  def new
    @progress_task = ProgressTask.new
  end

  # GET /progress_tasks/1/edit
  def edit
  end

  # POST /progress_tasks
  # POST /progress_tasks.json
  def create
    @progress_task = ProgressTask.new(progress_task_params)

    respond_to do |format|
      if @progress_task.save
        format.html { redirect_to @progress_task, notice: 'Progress task was successfully created.' }
        format.json { render :show, status: :created, location: @progress_task }
      else
        format.html { render :new }
        format.json { render json: @progress_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progress_tasks/1
  # PATCH/PUT /progress_tasks/1.json
  def update
    respond_to do |format|
      if @progress_task.update(progress_task_params)
        format.html { redirect_to @progress_task, notice: 'Progress task was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress_task }
      else
        format.html { render :edit }
        format.json { render json: @progress_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progress_tasks/1
  # DELETE /progress_tasks/1.json
  def destroy
    @progress_task.destroy
    respond_to do |format|
      format.html { redirect_to progress_tasks_url, notice: 'Progress task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress_task
      @progress_task = ProgressTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progress_task_params
      params.require(:progress_task).permit(:in_progress_task, :in_progress_time_minutes)
    end
end
