class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.all.find(params[:id].to_i)
    @status = " not completed yet."
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_display_path(@task)
  end

  def edit
    @task = Task.all.find(params[:id].to_i)
  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.update(task_params)
    redirect_to task_display_path(@task)
  end

  def destroy
    Task.find(params[:id].to_i).destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
