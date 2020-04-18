class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
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
  def show;  end

  # Update
  def edit;  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to '/tasks'
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
