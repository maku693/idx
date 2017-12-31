class Event < ApplicationRecord
  has_secure_password

  validates_presence_of :title
  validates_presence_of :body
end
