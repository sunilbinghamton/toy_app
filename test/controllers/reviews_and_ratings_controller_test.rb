require 'test_helper'

class ReviewsAndRatingsControllerTest < ActionController::TestCase
  setup do
    @reviews_and_rating = reviews_and_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reviews_and_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reviews_and_rating" do
    assert_difference('ReviewsAndRating.count') do
      post :create, reviews_and_rating: {  }
    end

    assert_redirected_to reviews_and_rating_path(assigns(:reviews_and_rating))
  end

  test "should show reviews_and_rating" do
    get :show, id: @reviews_and_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reviews_and_rating
    assert_response :success
  end

  test "should update reviews_and_rating" do
    patch :update, id: @reviews_and_rating, reviews_and_rating: {  }
    assert_redirected_to reviews_and_rating_path(assigns(:reviews_and_rating))
  end

  test "should destroy reviews_and_rating" do
    assert_difference('ReviewsAndRating.count', -1) do
      delete :destroy, id: @reviews_and_rating
    end

    assert_redirected_to reviews_and_ratings_path
  end
end
