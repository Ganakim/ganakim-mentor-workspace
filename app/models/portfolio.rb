class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :thumb_image, :main_image
  
  scope :js, -> {where(subtitle: 'JavaScript')}
  scope :ruby, -> {where(subtitle: 'Ruby')}
  
  efter_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= "http://via.placeholder.com/700x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end
end
