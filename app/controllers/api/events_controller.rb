class Api::EventsController < ApplicationController

  def index
    events = Event.all
    render json: events, status: :ok
  end

  def show
    event = Event.find(params[:id])
    render json: event, status: :ok
  end

  def create
    event = Event.new(event_params)

    if event.save
      render json: event, status: 201
    else
      render json: event.errors, status: 422
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :price, :capacity, :includes_food, :includes_drinks, :start_at, :ends_at, :active)
  end
end
