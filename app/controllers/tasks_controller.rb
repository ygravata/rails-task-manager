class TasksController < ApplicationController
  # Create (GET and POST)
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  # Read all
  def index
    @tasks = Task.all
  end

  # Read one
  def show
    @task = Task.find(params[:id])
  end

  # Update
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
