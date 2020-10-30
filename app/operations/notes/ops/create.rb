# class Notes::Ops::Create < Trailblazer::Operation
#
#   step Model(Note, :new)
#   step Contract::Build( constant: Notes::Contracts::Create )
#   step Contract::Validate()
#   step Contract::Persist()
#
# end

class Notes::Ops::Create
  attr_accessor :current_user, :params

  def self.call(options)
    current_user = options[:current_user]
    params = options[:params]

    self.new(current_user, params)
  end


  def initialize(current_user, params)
    self.current_user = current_user
    self.params = params

    run
  end

  def run
    init
    validate
    process
    success
    error
  end


  def init
    puts "Hello INIT"
  end

  def validate
    puts "Hello INIT"

  end

  def process
    puts "Hello INIT"

  end

  def success
    puts "Hello INIT"

  end

  def error
    puts "Error"
  end


end
