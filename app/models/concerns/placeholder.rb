module Placeholder
  extend ActiveSupport::Concern
  
  def self.imgGenerator(height:,width:)
    after_initialize :set_defaults
    "http://via.placeholder.com/#{height}x#{width}"
  end
end