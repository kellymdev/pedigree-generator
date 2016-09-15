require 'rails_helper'

RSpec.describe Title, type: :model  do
  let(:name) { "Champion" }
  let(:short_name) { "Ch" }

  subject(:title) { Title.new(name: name, short_name: short_name) }

  context "validations" do
    context "with a valid name and short name" do
      it { is_expected.to be_valid }
    end

    context "with a blank name" do
      let(:name) { "" }

      it { is_expected.not_to be_valid }
    end

    context "with a name that is too short" do
      let(:name) { "C" }

      it { is_expected.not_to be_valid }
    end

    context "with a name that is the minimum length" do
      let(:name) { "Ch" }

      it { is_expected.to be_valid }
    end

    context "with a blank short name" do
      let(:short_name) { "" }

      it { is_expected.not_to be_valid }
    end
  end
end
