class HomeController < ApplicationController
  def index
    @next_events = Event.next.order(start: :asc)
    @today_event = Event.today.first
  end

  def contact
  end

end
