class Faq < ActiveRecord::Base
  belongs_to :faq_type

  translates :title, :content
end
