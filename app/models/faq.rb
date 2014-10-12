class Faq < ActiveRecord::Base
  default_scope { order('position') } 

  acts_as_list
  belongs_to :faq_type

  translates :title, :content

  validates_presence_of :faq_type, :title, :content
end
