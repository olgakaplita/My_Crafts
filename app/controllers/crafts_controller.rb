class CraftsController < ApplicationController

  def index
    @craft = Craft.all
  end

  def new
    @craft = Craft.new
  end

  def create
    @craft = Craft.new(params[:craft].permit(:przedmiot, :opis))

    @craft.save
    redirect_to @craft
  end

  def show
    @craft = Craft.find(params[:id])
  end

end
