class Topic < ApplicationRecord
  validates_presence_of :title
  
  has_many :blogs
  
  scope :with_published_blogs, -> { joins(:blogs).where(blogs: { status: 'published' }) }
  
  def self.with_blogs
    includes(:blogs).where.not(blogs: {id: nil})
  end
end