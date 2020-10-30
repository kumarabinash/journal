class NotesController < ApplicationController

  layout "application"

  def index
    @notes = current_user.notes
  end

  def new
    @note ||= Note.new
  end

  def create
    @op =  Notes::Ops::Create.(current_user: current_user, params: params)

    @note = @op.note

    debugger

    flash_message :error, @op.messages[:error]

    render :action => 'new'

  end

  def update

  end

  def destroy

  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end
end