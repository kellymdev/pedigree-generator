require 'rails_helper'

RSpec.describe Gender, type: :model do
  let(:name) { "Male" }

  subject(:gender) { Gender.new(name: name) }

  context "validations" do
    context "with a valid name" do
      it { is_expected.to be_valid }
    end

    context "with a blank name" do
      let(:name) { "" }

      it { is_expected.not_to be_valid }
    end
  end
end
