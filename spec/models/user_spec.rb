require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new }

  context 'associations' do
    it { is_expected.to have_many :cats }
  end
end
