class NotesController < ApplicationController

  layout "application"

  def index
    @notes = current_user.notes
  end

  def create

  end

  def update

  end

  def destroy

  end
end