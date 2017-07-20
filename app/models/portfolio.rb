class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda {|x| x['name'].blank?}
  include Placeholder
  validates_presence_of :title, :body, :thumb_image, :main_image
  
  scope :js, -> {where(subtitle: 'JavaScript')}
  scope :ruby, -> {where(subtitle: 'Ruby')}
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= Placeholder.imgGenerator(height: '700',width: '400')
    self.thumb_image ||= Placeholder.imgGenerator(height: '350',width: '200')
  end
end
