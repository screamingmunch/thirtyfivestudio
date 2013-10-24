class EventsController < ApplicationController
  before_filter :is_admin, except: [:index, :show, :inquiry, :thankyou]
  
  def index
    @events = Event.all
  end

  def create
    new_event = Event.create(params[:event])
    redirect_to new_event
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update_attributes(params[:event])
    redirect_to "/events/#{event.id}"
  end

  def destroy
    Event.delete(params[:id])
    redirect_to events_path
  end

  def inquiry
    @user = current_user
    @name = params[:username]
    @title = params[:inquiry_titile]
    @reservation_type = params[:inquiry_type]
    @startdate = params[:startdate]
    @returndate = params[:returndate]
    @phone_num = params[:phone_number]
    @message = params[:comment]

    UserMailer.form_confirmation(@user, params).deliver
    UserMailer.admin_form_confirmation(@user, params).deliver
    redirect_to "/events/thankyou"

  end

  def thankyou
  end

  private
  def  is_admin
    if current_user == nil || !current_user.admin  
       redirect_to :root
    end
  end

end
