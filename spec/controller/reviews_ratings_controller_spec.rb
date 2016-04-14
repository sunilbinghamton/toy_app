

require 'rails_helper'

describe ReviewsAndRatingsController , :type => :controller do
    it 'should give ratings successfully' do
      post :create
      expect(response).to redirect_to reviews_and_ratings_path
    end
    
    it 'should update ratings successfully' do
      post :create
      patch :update,  id: '1'
      expect(response).to redirect_to reviews_and_ratings_path
    end
    
    it 'should destroy ratings successfully' do
      post :create
      delete :destroy, id: '1'
      expect(response).to redirect_to users_url
    end    
end
