class RegistrationsController < ApplicationController
  before_action :authenticate_user!

  def create
   @registration = current_user.registrations.new(registration_params.merge(event_id: params[:event_id]))

   if @registration.event.available?
     @registration.set_total_price
     @registration.save

     redirect_to @registration.event, notice: "Thank you for your registration!"
   else
     redirect_to @registration.event, notice: "Sorry, the event is full!"
   end

 end

 private

 def registration_params
   params.require(:registration).permit(:guest_count)
 end
end
