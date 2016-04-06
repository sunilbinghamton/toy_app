require 'rails_helper'

describe UsersController , :type => :controller do
    it 'should create user successfully' do
      post :create, user: { name: 'Sunil', email: 'sunilsahu@gmail.com', password: 'sunil@ahir' }
      expect(response).to redirect_to users_path
    end
    
    it 'should update user successfully' do
      patch :update,  id:110, user: {name: 'abc' }
      expect(response).to redirect_to user_path
      
    end
end
