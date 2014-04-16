class TodosController < ApplicationController

  def index
    @todo = Todo.new
    @todos = Todo.all
  end

  # POST /todos
  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to todos_path, notice: 'Todo was successfully created.'
    else
      render :index
    end
  end

  private

  def todo_params
    params[:todo].permit(:name)
  end

end
