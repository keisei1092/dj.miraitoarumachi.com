class Volume < ActiveRecord::Base
  belongs_to :event
  has_many :setlists
end
