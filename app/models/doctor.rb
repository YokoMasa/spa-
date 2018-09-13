class Doctor < ApplicationRecord
  validates :first_name, :last_name, :hospital_name, presence: true
  
  enum possibility: {
    unknown: 0,
    willing: 1,
    normal: 2,
    unwilling: 3
  }, _prefix: true

  enum english_speakable: {
    unknown: 0,
    yes: 1,
    no: 2
  }, _prefix: true

  belongs_to :department

end
