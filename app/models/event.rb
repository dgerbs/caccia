class Event < ActiveRecord::Base
  
  validates_presence_of :title
  validates_presence_of :location
  validates_presence_of :summary

  belongs_to :user, inverse_of: :event
end
