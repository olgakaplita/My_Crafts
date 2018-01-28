class CraftsController < ApplicationController
  def index
  end

  def new
    @craft = Craft.new
  end

  def create
    render plain: params[:craft].inspect
  end
end
