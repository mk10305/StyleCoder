require 'test_helper'

class WoreItVotesControllerTest < ActionController::TestCase
  setup do
    @wore_it_vote = wore_it_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wore_it_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wore_it_vote" do
    assert_difference('WoreItVote.count') do
      post :create, wore_it_vote: { item_id: @wore_it_vote.item_id, user_id: @wore_it_vote.user_id, vote: @wore_it_vote.vote }
    end

    assert_redirected_to wore_it_vote_path(assigns(:wore_it_vote))
  end

  test "should show wore_it_vote" do
    get :show, id: @wore_it_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wore_it_vote
    assert_response :success
  end

  test "should update wore_it_vote" do
    patch :update, id: @wore_it_vote, wore_it_vote: { item_id: @wore_it_vote.item_id, user_id: @wore_it_vote.user_id, vote: @wore_it_vote.vote }
    assert_redirected_to wore_it_vote_path(assigns(:wore_it_vote))
  end

  test "should destroy wore_it_vote" do
    assert_difference('WoreItVote.count', -1) do
      delete :destroy, id: @wore_it_vote
    end

    assert_redirected_to wore_it_votes_path
  end
end
