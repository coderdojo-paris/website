class Event < ActiveRecord::Base
  belongs_to :venue

  def self.previous
    where("start < ?", Time.zone.now)
  end

  def self.next
    where("start > ?", Time.zone.now)
  end
end
