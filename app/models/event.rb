class Event < ActiveRecord::Base
  belongs_to :venue

  def self.previous
    where("start < ?", Time.zone.now)
  end

  def self.next
    where("start > ?", Time.zone.now)
  end

  def self.today
    where(start: (Time.zone.now.midnight)..(Time.zone.now.midnight + 1.day))
  end
end
