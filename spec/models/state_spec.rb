require 'rails_helper'

RSpec.describe State, type: :model do
  it { is_expected.to have_many :people }
  it { is_expected.to have_many :cities }
  it { is_expected.to validate_length_of(:acronym).is_equal_to(2) }
end
