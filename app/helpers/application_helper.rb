module ApplicationHelper
  def flash_class(level)
    case level.to_sym
    when :notice then "notification is-info"
    when :success then "notification is-success"
    when :error then "notification is-danger"
    when :alert then "notification is-warning"
    end
  end

  def print_name(user)
    if user.name.nil?
      'Desconocido'
    else
      "#{user.name}"
    end
  end

  def print_username(user)
    if user.username.empty?
      "@#{user.email.sub(/@.*/, '')}"
    else
      "@#{user.username}"
    end
  end
end
