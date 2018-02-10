class CraftsController < ApplicationController

  def index
    @craft = Craft.all
  end

  def new
    @craft = Craft.new
  end

  def create
    @craft = Craft.new(params[:craft].permit(:przedmiot, :opis))

    if @craft.save
      redirect_to @craft
    else
      render 'new'
    end
  end

  def show
    @craft = Craft.find(params[:id])
  end

  def edit
    @craft = Craft.find(params[:id])
  end


    def update
      if @craft.update(permitted_attributes(@craft))
        redirect_to craft_path(@craft)
      else
        render 'edit'
      end
    end


end
