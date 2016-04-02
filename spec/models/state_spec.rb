require 'rails_helper'

RSpec.describe State, type: :model do
  it { is_expected.to have_many :people }
end
