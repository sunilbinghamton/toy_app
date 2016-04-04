require 'rails_helper'

describe UsersController , :type => :controller do
    it 'should create user successfully' do
      post :create, user: { name: 'Sunil', email: 'sunilsahu@gmail.com', password: 'sunil@ahir' }
      expect(response).to redirect_to users_path
    end
end