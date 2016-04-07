require 'rails_helper'

describe UsersController , :type => :controller do
    it 'should create user successfully' do
      post :create, user: { name: 'Sunil', email: 'sunilsahu@gmail.com', password: 'sunil@ahir' }
      expect(response).to redirect_to users_path
    end
    
    it 'should update user successfully' do
      post :create, user: { name: 'Sunil', email: 'sunilsahu@gmail.com', password: 'sunil@ahir' }
      patch :update,  id: '1', user: {  password: '13123o4oj0'}
      expect(response).to redirect_to users_path
    end
    
    it 'should destroy user successfully' do
      post :create, user: { name: 'Sunil', email: 'sunilsahu@gmail.com', password: 'sunil@ahir' }
      delete :destroy, id: '1'
      expect(response).to redirect_to users_url
    end    
end
