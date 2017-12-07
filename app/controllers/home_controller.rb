class HomeController < ApplicationController

  def index
  	@events = Event.order(created_at: :asc)
  end

end
