class BaseOperation
  attr_accessor :current_user, :params, :messages, :document

  def self.call(options)
    current_user = options[:current_user]
    params = options[:params]
    self.new(current_user, params)
  end


  def initialize(current_user, params)
    self.current_user = current_user
    self.params = params

    self.messages = {
        success: [],
        error: []
    }

    execute
  end

  def execute
    steps = %i( init validate process )

    steps.each do |step|
      self.send(step)
      if self.messages[:error].present?
        break
      end
    end

    self.messages[:error].present? ? self.send(:failure) : self.send(:success)
  end


  def init
  end

  def validate
  end

  def process
  end

  def success
    self
  end

  def failure
    self
  end

  def success?
    messages[:error].blank?
  end

  def failure?
    messages[:error].present?
  end

end
