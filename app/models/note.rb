class Note < ApplicationRecord
  belongs_to :user

  has_many :note_taggings
  has_many :tags, through: :note_taggings
end
