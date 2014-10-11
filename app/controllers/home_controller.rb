class HomeController < ApplicationController
  def index
    @next_event = Event.next.first
  end

  def contact
  end

end
