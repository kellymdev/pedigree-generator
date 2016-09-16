require 'rails_helper'

RSpec.describe Cat, type: :model do
  let(:name) { 'Madison' }
  let(:breed) { Breed.create!(name: 'Exotic') }
  let(:colour) { CoatColour.create!(name: 'Blue') }
  let(:gender) { Gender.create!(name: 'Neuter') }
  let(:title) { Title.create!(name: 'Silver Double Grand Premier', short_name: 'SDGP') }
  let(:user) { User.new }

  subject(:cat) { Cat.new(name: name, breed: breed, coat_colour: colour, user: user, gender: gender, title: title) }

  context 'associations' do
    it { is_expected.to have_many :kittens }

    it { is_expected.to have_many :offspring }

    it { is_expected.to belong_to :breed }

    it { is_expected.to belong_to :coat_colour }

    it { is_expected.to belong_to :user }

    it { is_expected.to belong_to :sire }

    it { is_expected.to belong_to :dam }

    it { is_expected.to belong_to :gender }

    it { is_expected.to belong_to :title }
  end

  context 'validations' do
    context 'with a valid name' do
      it { is_expected.to be_valid }
    end

    context 'with a minimum length name' do
      let(:name) { 'Ty' }

      it { is_expected.to be_valid }
    end

    context 'with a blank name' do
      let(:name) { '' }

      it { is_expected.not_to be_valid }
    end

    context 'with a name that is too short' do
      let(:name) { 'M' }

      it { is_expected.not_to be_valid }
    end
  end

  describe 'sire?' do
    subject(:sire) { cat.sire? }

    context 'when the gender is male' do
      let(:gender) { Gender.create!(name: 'Male') }

      it { is_expected.to eq true }
    end

    context 'when the gender is female' do
      let(:gender) { Gender.create!(name: 'Female') }

      it { is_expected.to eq false }
    end
  end

  describe 'dam?' do
    subject(:dam) { cat.dam? }

    context 'when the gender is female' do
      let(:gender) { Gender.create!(name: 'Female') }

      it { is_expected.to eq true }
    end

    context 'when the gender is male' do
      let(:gender) { Gender.create!(name: 'Male') }

      it { is_expected.to eq false }
    end
  end

  describe 'full_name' do
    subject(:full_name) { cat.full_name }

    context 'when the cat has a title' do
      it { is_expected.to eq 'Silver Double Grand Premier Madison' }
    end

    context "when the cat doesn't have a title" do
      let(:title) { }

      it { is_expected.to eq 'Madison' }
    end
  end

  describe 'short_name' do
    subject(:short_name) { cat.short_name }

    context 'when the cat has a title' do
      it { is_expected.to eq 'SDGP Madison' }
    end

    context "when the cat doesn't have a title" do
      let(:title) { }

      it { is_expected.to eq 'Madison' }
    end
  end
end
