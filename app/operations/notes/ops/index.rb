class Notes::Ops::Index < BaseOperation

  attr_accessor :notes

  def init
    self.notes = current_user.notes.includes(:tags)
  end

  def process
    if params[:filter_tag_id].present?
      self.notes = self.notes.joins(:note_taggings).where("note_taggings.tag_id = ?", params[:filter_tag_id])
    end
  end

end
