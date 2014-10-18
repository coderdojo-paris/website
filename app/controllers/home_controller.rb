class HomeController < ApplicationController
  def index
    @next_event = Event.next.first unless Event.next.nil?
  end

  def contact
  end

end
