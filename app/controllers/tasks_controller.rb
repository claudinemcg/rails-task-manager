class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  # run find_task before you run the methods mentioned

  def index
    @tasks = Task.all
  end

  def new # needs to be before show
    @task = Task.new # just a new instance- will create it in create
  end

  def show
    # @task = Task.find(params[:id]) # tasks/id
    # find_task don't need as it's run at the top
  end

  def create
    @task = Task.new(task_params) # use method task_params (below) instead of params[:task] for safety
    @task.save
    redirect_to task_path(@task) # go to the new task's page e.g. /tasks/5
  end

  def edit
    # @task = Task.find(params[:id]) # tasks/id/edit
    # find_task don't need as it's run at the top
  end

  def update
    # @task = Task.find(params[:id])
    # find_task don't need as it's run at the top
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    # find_task don't need as it's run at the top
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    # use this for safety
    params.require(:task).permit(:title, :details)
  end

  def find_task
    # instead of having to type @task = Task.find(params[:id]) in the methods above
    @task = Task.find(params[:id])
  end
end
