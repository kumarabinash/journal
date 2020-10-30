class DashboardController < ApplicationController

  layout "application"

  def index
    @notes = current_user.notes.updated_at_desc.first(4)
    @tags = Tag.user_tags(current_user).includes(:notes)
    @notes_per_tag = NoteTagging.where(tag_id: @tags.select(:id)).group(:tag_id).count
  end
end