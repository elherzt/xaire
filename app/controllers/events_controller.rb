class EventsController < ApplicationController
  respond_to :html
  expose(:user) { User.find(params[:user_id]) }
  expose(:events) do 
    user.events.where(params.except(:action, :controller, :format, :utf8, :commit, :authenticity_token, :user_id))
  end
  expose(:event)


  def new
    #@user = User.find(params[:user_id])
    #@event = @user.events.new
  end

  def create

    #@user = User.find(params[:user_id])
    #@event = @user.events.build(event_params)
    event.save
    respond_with(event)
  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :description,
      :date,
      :place,
      :cost,
      :hour,
      :requirements,
      :notes,
      :user_id
    )
  end
end
