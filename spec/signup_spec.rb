require 'spec_helper'
require 'json'

describe "Signup" do
  describe "redirects -" do
    it "GET '/create' should redirect to '/show'" do
      post '/create'
      last_response.should be_redirect
      follow_redirect!
      last_request.url.should include('/show')
    end
  end
end