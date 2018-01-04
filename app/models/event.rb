class Event < ApplicationRecord
  has_many :participants, dependent: :destroy

  validates_presence_of :slug
  validates_presence_of :title
  validates_presence_of :body

  def to_key
    [slug]
  end

  def to_param
    slug
  end
end
