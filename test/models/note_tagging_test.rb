# == Schema Information
#
# Table name: note_taggings
#
#  id         :bigint           not null, primary key
#  note_id    :bigint           not null
#  tag_id     :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class NoteTaggingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
