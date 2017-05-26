class RegistrationsController < ApplicationController
  before_action :authenticate_user!

  def create
   @registration = current_user.registrations.create(registration_params)

   redirect_to @registration.room, notice: "Thank you for your registration!"
 end

 private

 def registration_params
   params.require(:registration).permit(:price, :total, :event_id)
 end
end
