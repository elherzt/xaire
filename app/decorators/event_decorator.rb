class EventDecorator < Draper::Decorator
  delegate_all
  def next_events
    events = scope_next_events.map(&:name)
  end

  def show_event(eve)
  end


  private
  def scope_next_events
    model.next
  end

end
