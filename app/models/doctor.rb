class Doctor < ApplicationRecord
  enum english_speakable: {
    unknown: 0,
    yes: 1,
    no: 2
  }

  enum possibility: {
    unknown: 0,
    willing: 1,
    normal: 2,
    unwilling: 3
  }

  belongs_to :department

end
