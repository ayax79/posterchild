require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    login! 1 
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should create post" do

    assert_difference('Post.count') do
      post :create, :post => { }
    end

    assert_response 302
  end

  test "should show post" do
    get :show, :id => posts(:one).to_param
    assert_response :success
  end

end
