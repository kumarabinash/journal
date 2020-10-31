# class Notes::Ops::Create < Trailblazer::Operation
#
#   step Model(Note, :new)
#   step Contract::Build( constant: Notes::Contracts::Create )
#   step Contract::Validate()
#   step Contract::Persist()
#
# end

class Notes::Ops::Destroy < BaseOperation

  attr_accessor :note

  def init
    self.note = Notes::Ops::Index.(current_user: current_user, params: params)&.notes&.find_by(id: params[:id])
  end

  def validate
    unless self.note.present?
      self.messages[:error] << "Note not found"
    end
  end

  def process
    if self.note.destroy
      self.messages[:success] << "Deleted note"
    else
      self.messages[:error] << "Couldn't delete note. Please try again later"
    end
  end

end
