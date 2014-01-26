class TodosController < ApplicationController

  before_action :check, only: [:create]

  def index
    @todos = Todo.all
  end

  def create
    Todo.new(params[:todo]).save
  end

  def check
    params.require(:todo).permit(:body, :deadline_at)
  end
end
