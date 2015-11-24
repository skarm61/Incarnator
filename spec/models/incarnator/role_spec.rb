require 'rails_helper'

module Incarnator
  RSpec.describe Role, type: :model do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
