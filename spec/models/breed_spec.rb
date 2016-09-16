require 'rails_helper'

RSpec.describe Breed, type: :model do
  let(:name) { 'Persian' }
  subject(:breed) { Breed.new(name: name) }

  context 'associations' do
    it { is_expected.to have_many :cats }
  end

  context 'validations' do
    context 'with a valid name' do
      it { is_expected.to be_valid }
    end

    context 'with a minimum length name' do
      let(:name) { 'Ma' }

      it { is_expected.to be_valid }
    end

    context 'with a blank name' do
      let(:name) { '' }

      it { is_expected.not_to be_valid }
    end

    context 'with a name that is too short' do
      let(:name) { 'B' }

      it { is_expected.not_to be_valid }
    end
  end
end
