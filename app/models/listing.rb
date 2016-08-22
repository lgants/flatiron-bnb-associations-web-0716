class Listing < ActiveRecord::Base
  has_many :reservations
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations, :class_name => 'User'

end
