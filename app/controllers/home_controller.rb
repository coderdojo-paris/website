class HomeController < ApplicationController
  def index
    @next_event = Event.next.first
    @today_event = Event.today.first
  end

  def contact
  end

end
