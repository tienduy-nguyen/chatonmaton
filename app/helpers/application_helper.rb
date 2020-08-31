module ApplicationHelper

  def flash_class(level)
    case level
        when "notice"
          return "alert alert-info"
        when "success"
          return "alert alert-success"
        when "error" 
          return "alert alert-danger"
        when "warning" 
          return "alert alert-warning"
        when "alert"
          return "alert alert-danger"
    end
  end

end
