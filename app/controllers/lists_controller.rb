class ListsController < ApplicationController

  def index
  @lists = List.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def list_params

  end

  def set_list
    @list = List.find()
  end
end
