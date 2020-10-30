class Notes::Ops::Create < Trailblazer::Operation

  step Model(Note, :new)
  step Contract::Build( constant: Notes::Contracts::Create )
  step Contract::Validate()
  step Contract::Persist()

end