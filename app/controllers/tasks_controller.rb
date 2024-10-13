class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end
  
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to tasks_path, notice: 'Task created successfully.'
      else
        render :new
      end
    end
  
    def complete
      @task = Task.find(params[:id])
      @task.update(completed: true)
      redirect_to tasks_path, notice: 'Task marked as complete.'
    end
  
    private
  
    def task_params
      params.require(:task).permit(:name)
    end
  end
  