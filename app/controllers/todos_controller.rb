class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def create
    Todo.new(create_params).save
    redirect_to todos_path
  end

  def destroy
    if todo = Todo.find_by(destroy_params)
      todo.destroy
    end
    redirect_to todos_path
  end


  private

  def create_params
    params.require(:todo).permit(:body, :deadline_at)
  end

  def destroy_params
    params.permit(:id)
  end
end
