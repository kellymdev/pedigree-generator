require 'rails_helper'

RSpec.describe CoatColour, type: :model do
  let(:name) { "Blue" }
  subject(:colour) { CoatColour.new(name: name) }

  context "validations" do
    context "with a valid colour" do
      it { is_expected.to be_valid }
    end

    context "with a minimum length name" do
      let(:name) { "Bl" }

      it { is_expected.to be_valid }
    end

    context "with a blank name" do
      let(:name) { "" }

      it { is_expected.not_to be_valid }
    end

    context "with a name that is too short" do
      let(:name) { "B" }

      it { is_expected.not_to be_valid }
    end
  end
end
