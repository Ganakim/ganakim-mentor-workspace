class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :thimb_image, :main_image
end
