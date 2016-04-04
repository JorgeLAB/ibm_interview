module ApplicationHelper

  def states_in_order
    State.all.order :acronym
  end

  def cities_in_order(state)
    City.where(state_id: state) || {}
  end

end
