class GearsController < ApplicationController


  

  def index
 
    @gears = Gear.all
    render :index
  end

  def create
    new_gear = Gear.create(params[:gear])
    redirect_to new_gear
  end

  def new
    @gear = Gear.new
  end

  def edit
    @gear = Gear.find(params[:id])
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def update
    gear = Gear.find(params[:id])
    gear.update_attributes(params[:gear])
    redirect_to "/gears/#{gear.id}"
  end

  def destroy
    Gear.delete(params[:id])
    redirect_to gears_path
  end
end
