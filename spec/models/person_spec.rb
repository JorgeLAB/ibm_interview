require 'rails_helper'

RSpec.describe Person, type: :model do
  it { is_expected.to belong_to :state }
  it { is_expected.to belong_to :city }
  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }
end
