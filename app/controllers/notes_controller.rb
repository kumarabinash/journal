class NotesController < ApplicationController

  layout "application"

  def index
    @notes = current_user.notes
  end

  def new
    @note = Note.new(user_id: current_user.id)
  end

  def create
    @op = ::Notes::Ops::Create.(params: params, current_user: current_user)
    # @op['contract.default'].errors.messages

  end

  def update

  end

  def destroy

  end
end