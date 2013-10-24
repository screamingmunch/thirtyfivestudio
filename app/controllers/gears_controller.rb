class GearsController < ApplicationController
  before_filter :is_admin, except: [:index, :show]

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

  private
    def  is_admin
      if current_user == nil || !current_user.admin  
         redirect_to :root
      end
    end
    

end
