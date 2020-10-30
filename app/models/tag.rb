class Tag < ApplicationRecord

  has_many :note_taggings
  has_many :note, through: :note_taggings

end
