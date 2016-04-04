module ApplicationHelper

  def states_in_order
    State.all.order :acronym
  end

end
