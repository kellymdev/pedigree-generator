require 'rails_helper'

RSpec.describe Cat, type: :model do
  let(:name) { "Madison" }
  let(:breed) { Breed.create!(name: "Exotic") }
  let(:colour) { CoatColour.create!(name: "Blue") }
  let(:gender) { Gender.create!(name: "Neuter") }
  let(:user) { User.new }

  subject(:cat) { Cat.new(name: name, breed: breed, coat_colour: colour, user: user, gender: gender) }

  context "associations" do
    it { is_expected.to have_many :kittens }

    it { is_expected.to have_many :offspring }

    it { is_expected.to belong_to :breed }

    it { is_expected.to belong_to :coat_colour }

    it { is_expected.to belong_to :user }

    it { is_expected.to belong_to :sire }

    it { is_expected.to belong_to :dam }

    it { is_expected.to belong_to :gender }
  end

  context "validations" do
    context "with a valid name" do
      it { is_expected.to be_valid }
    end

    context "with a minimum length name" do
      let(:name) { "Ty" }

      it { is_expected.to be_valid }
    end

    context "with a blank name" do
      let(:name) { "" }

      it { is_expected.not_to be_valid }
    end

    context "with a name that is too short" do
      let(:name) { "M" }

      it { is_expected.not_to be_valid }
    end
  end
end