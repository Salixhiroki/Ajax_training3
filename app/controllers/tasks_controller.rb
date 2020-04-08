class TasksController < ApplicationController
  
  before_action :all_tasks, only: [:index, :create]
  respond_to :html, :js
  
  
  # def index
  #   @tasks=Task.all
  # end
  
  
  def new
    @task= Task.new
    logger.debug("OK")
    # binding pry
  end
  
  
  def create
    @task=Task.create(task_params)
    if @task.save
    else
      format.js {render :new}
    end
  end


  private
  
  def all_tasks
    # bindding pry
    @tasks = Task.all
  end
  
  def task_params
    params.require(:task).permit(:description,:deadline)
  end

  
end
