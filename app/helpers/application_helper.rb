module ApplicationHelper
  def state(event)
    end_date = event.end_date.present? ? event.end_date : event.start_date
    if (end_date < Time.now)
      color = "danger",  msj = "Done"
    elsif (event.start_date > Time.now)  
      color = "success", msj = "Next"
    else
      color = "warning", msj = "Right Now"
    end
    return color
    return msj
  end

end
