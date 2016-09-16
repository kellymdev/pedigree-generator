require 'rails_helper'

RSpec.describe CatsController, type: :controller do
  render_views

  let(:breed) { Breed.create!(name: 'Exotic') }
  let(:gender) { Gender.create!(name: 'Neuter') }
  let(:user) { User.create!(email: 'test@test.com', password: '123456') }
  let(:cat) { Cat.create!(name: 'Madison', breed: breed, gender: gender, user: user) }

  before do
    sign_in user
  end

  describe '#show' do
    before { get :show, params: { id: cat.id } }

    it 'renders the show template' do
      expect(response).to render_template :show
    end

    it 'assigns @cat to the cat' do
      expect(assigns(:cat)).to eq(cat)
    end
  end

  describe '#index' do
    before { get :index }

    it 'renders the index template' do
      expect(response).to render_template :index
    end

    it 'assigns @cats to all the cats for the user' do
      expect(assigns(:cats)).to eq(Cat.all)
    end
  end

  describe '#new' do
    before { get :new }

    it 'renders the new template' do
      expect(response).to render_template :new
    end
  end

  describe '#edit' do
    before { get :edit, params: { id: cat.id } }

    it 'renders the edit template' do
      expect(response).to render_template :edit
    end

    it 'assigns @cat to the cat' do
      expect(assigns(:cat)).to eq(cat)
    end
  end
end
