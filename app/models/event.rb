class Event < ApplicationRecord
  has_many :participants, dependent: :destroy

  validates_presence_of :title
  validates_presence_of :body
end
