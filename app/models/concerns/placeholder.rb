module Placeholder
  extend ActiveSupport::Concern
  
  def self.imgGenerator(height:,width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end
end