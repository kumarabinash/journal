module ApplicationHelper

  def flash_message(type, messages)
    flash[type] = []

    if messages.is_a?(Array)
      flash[type] += messages
    else
      flash[type] << text
    end

  end
end
