class Event < ActiveRecord::Base
  has_many :tickets
  has_many :users, through: :tickets
  has_many :volumes
end
