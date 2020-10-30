class NotesController < ApplicationController

  layout "application"

  def index
    @notes = current_user.notes
  end

  def new
    @note ||= Note.new(body: "body")
  end

  def create
    # @note = Note.new(note_params)

    # @note = Note.new(body: "fjdklsfj")
    @op =  Notes::Ops::Create.(current_user: current_user, params: params)

    redirect_to action: :new

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