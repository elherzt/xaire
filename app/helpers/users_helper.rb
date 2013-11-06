module UsersHelper
  def state(event)
    if (event.end_date.to_date < Time.now)
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
