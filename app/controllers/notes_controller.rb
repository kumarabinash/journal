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

    if @op.success?
      redirect_to action: :index
    else
      @note = @op.note
      flash_message :error, @op.messages[:error]
      render :action => 'new'
    end
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