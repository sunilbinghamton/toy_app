require 'rails_helper'

describe SessionsController , :type => :controller do
    describe "POST Create" do
    
      before do
        User.create(name: 'Sunil', 
                    email: 'sunilsahu@gmail.com',
                    password: '123456' )
      end
      
      it 'should login successfully only if both username and password are valid and redirect_to Homepage' do
        post :create, session: {email: 'sunilsahu@gmail.com', password: '123456'}
        expect(response).to redirect_to root_url
      end
  
      it 'should not login successfully if username is invalid and redirect_to to login page' do
        post :create, session: {email: 'slkjdfoij@gmail.com', password: '123456'}
        expect(response).to redirect_to login_path
      end
      
      it 'should not login successfully if password invalid and redirect_to to login page' do
        post :create, session: {email: 'sunilsahu@gmail.com', password: 'slhfo20'}
        expect(response).to redirect_to login_path
      end      
      
      it 'should not login successfully if both username and password are invalid  and redirect_to to login page' do
        post :create, session: {email: 'sshah@gmail.com', password: '20948j48'}
        expect(response).to redirect_to login_path
      end            

      it 'should not login successfully if password is empty and redirect_to to login page' do
        post :create, session: {email: 'sunilsahu@gmail.com', password: ''}
        expect(response).to redirect_to login_path
      end          
      
      it 'should not login successfully if username is empty and redirect_to to login page' do
        post :create, session: {email: 'sunilsahu@gmail.com', password: ''}
        expect(response).to redirect_to login_path
      end        
    end    
    
end
