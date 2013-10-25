class Musician < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :genre
  validates_presence_of :location
end
