class Event < ApplicationRecord
  attribute :slug, :string, default: -> { SecureRandom.base58(8) }

  has_many :participants, dependent: :destroy

  validates :slug, presence: true, uniqueness: true
  validates :title, presence: true
  validates :body, presence: true

  def to_key
    [slug]
  end

  def to_param
    slug
  end
end
