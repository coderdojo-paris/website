class HomeController < ApplicationController
  def index
    @next_event = Event.next.first
  end
  
  def participants
  end

  def mentors
  end

  def contact
  end

end
