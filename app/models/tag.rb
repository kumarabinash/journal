# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord

  has_many :note_taggings
  has_many :notes, through: :note_taggings

  validates :name, length: { in: 1..30 }

  scope :user_tags, -> (user) {
    post_ids = Note.where(user_id: user.id).select(:id)
    where(id: NoteTagging.where(note_id: post_ids).select(:tag_id))
  }
end
