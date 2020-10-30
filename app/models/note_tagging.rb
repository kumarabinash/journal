class NoteTagging < ApplicationRecord
  belongs_to :note
  belongs_to :tag
end
