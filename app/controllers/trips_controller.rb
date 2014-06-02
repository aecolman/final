class TripsController < ApplicationController

  def create
    Trip.create("user_id" => params["user_id"], "day" => params["day"], "miles" => params["miles"])
    redirect_to "/trips"
  end

  def update
    the_trip = Trip.find_by("id" => params["id"])
    the_trip.update("user_id" => params["user_id"], "day" => params["day"], "miles" => params["miles"])
    redirect_to "/trips"
  end

  def destroy
    the_trip = Trip.find_by("id" => params["id"])
    the_trip.delete
    redirect_to "/trips"
  end

end
