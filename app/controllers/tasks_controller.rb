class TasksController < ApplicationController
  def index
    @task=Task.all
  end

  def new
    @task=Task.new
  end

  def show
    @task=Task.find(params[:id])
  end

  def create
    @task = Task.new(
      description: params[:task][:description],
      deadline: params[:task][:deadline])
    if @task.save
      redirect_to task_path(@task.id)
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end
