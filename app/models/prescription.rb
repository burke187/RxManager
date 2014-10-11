class Prescription < ActiveRecord::Base
  attr_accessible :user_id, :prescription_type, :sph, :cyl, :axis, :bc, :diam

  validates :user_id, numericality: { only_integer: true }
  validates :prescription_type, 
  validates :spc, :cyl, :inclusion => { :in -10.0..10.0}
  validate :is_multiple_of_point_five

  	def is_multiple_of_point_two_five
  	    unless sph && cyl % 0.25 == 0
  	        errors.add(:sph, "SPH and CYL must be a multiple of 0.25")
  	    end
  	end
  validates :axis, :inclusion => { :in 0..180} 

  belongs_to :user
  validates :user, presence: true

end
