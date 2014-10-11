class Prescription < ActiveRecord::Base
  attr_accessible :user_id, :prescription_type, :sph, :cyl, :axis, :bc, :diam

  validates :user_id, numericality: { only_integer: true }
  validates :prescription_type, 
  validates :spc, :inclusion => { :in -10.0..10.0}
  validate :sph_is_multiple_of_point_five

  def sph_is_multiple_of_point_two_five
      unless sph % 0.25 == 0
          errors.add(:sph, "must be multiple of 0.25")
      end
  end

  belongs_to :user
  validates :user, presence: true

end
