class ReviewsController < ApplicationController

  def create
    Review.create("car_id" => params["car_id"], "user_id" => params["user_id"], "comment" => params["comments"])
    redirect_to "/cars/#{params["car_id"]}"
  end

end
