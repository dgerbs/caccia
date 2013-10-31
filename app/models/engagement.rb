class Engagement < ActiveRecord::Base

  validates_presence_of :status
  validates_presence_of :application
  validates_presence_of :bid

  belongs_to :musician, inverse_of: :engagement
end
