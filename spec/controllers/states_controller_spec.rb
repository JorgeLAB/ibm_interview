require 'rails_helper'

RSpec.describe StatesController, type: :controller do

  let(:state) { create :state }

  it "return state cities" do
    get "get_cities", state_id: state[:id]
    expect(assigns(:cities)).to eq state.cities
  end

end
