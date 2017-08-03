class Skill < ApplicationRecord
  validates_presence_of :title, :time_spent
end
