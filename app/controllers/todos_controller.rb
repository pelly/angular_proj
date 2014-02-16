class TodosController < ApplicationController
  def index
    render :json => Todo.all
  end

  def create
    new_todo = Todo.create(params.permit([:summary,:status]))
    render :json => new_todo
  end
end