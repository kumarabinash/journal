module ApplicationHelper

  def flash_message(type, messages)
    flash[type] = []

    if messages.is_a?(Array)
      flash[type] += messages
    else
      flash[type] << text
    end

  end

  def generate_random_color_from_name(name)
    name = name.to_s
    if name[0].upcase <= 'E'
      color = 'red'
    elsif name[0].upcase <= 'K'
      color = 'blue'
    elsif name[0].upcase <= 'Q'
      color = "green"
    elsif name[0].upcase <= 'W'
      color = 'orange'
    elsif name[0].upcase <= 'Z'
      color = 'grey'
    end
  end
end
