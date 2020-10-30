# class Notes::Ops::Create < Trailblazer::Operation
#
#   step Model(Note, :new)
#   step Contract::Build( constant: Notes::Contracts::Create )
#   step Contract::Validate()
#   step Contract::Persist()
#
# end

class Notes::Ops::Create < BaseOperation

  attr_accessor :note_params, :note

  def init
    self.note_params = retrieve_note_params
    self.note = current_user.notes.new(note_params)
  end

  def validate
    unless self.note.valid?
      self.messages[:error] += self.note.errors.full_messages
    end
  end

  def process
    if self.note.save
      self.messages[:success] << "Successfully Created A New Note"
    end
  end

  private

  def retrieve_note_params
    params.require(:note).permit(:body, :title)
  end

end
