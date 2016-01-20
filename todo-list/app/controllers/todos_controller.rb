class TodosController < ApplicationController
  respond_to :json

  def index
    respond_with(@todos = Todo.all),
                    :methods => [:status],
                    :include => :priority
  end

  def show
    respond_with(@todo = Todo.find(params[:priority])), :only => [:status, :description, :priority, :start_date, :end_date]
  end
end
