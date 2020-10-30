# == Schema Information
#
# Table name: notes
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Note < ApplicationRecord
  belongs_to :user

  validates :title, length: { in: 3..256 }
  validates :body, length: { in: 3..65536 }

  has_many :note_taggings
  has_many :tags, through: :note_taggings
end
