require 'rails_helper'

RSpec.describe HomeController do
  describe '#index' do
    it 'provides 2 events' do
      get :index
      expect(assigns(:events)).to have(2).items
    end
  end
end
