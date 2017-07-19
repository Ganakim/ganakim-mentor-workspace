class Skill < ApplicationRecord
  include Placeholder
  
  validates_presence_of :title, :time_spent
  
  after_initialize :set_defaults
  
  def set_defaults
    self.badge ||= Placeholder.imgGenerator(height: 250,width: 250)
  end
end
