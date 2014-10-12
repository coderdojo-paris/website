class Resource < ActiveRecord::Base
  belongs_to :resource_type

  default_scope { order('position') } 

  acts_as_list

  translates :title, :description, :button

  validates_presence_of :resource_type, :title, :description, :button
end
