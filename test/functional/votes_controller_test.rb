require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  setup do
    @vote = votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote" do
    assert_difference('Vote.count') do
      post :create, vote: { agglom: @vote.agglom, culture: @vote.culture, diginf: @vote.diginf, env: @vote.env, finance: @vote.finance, inf: @vote.inf, lifestyle: @vote.lifestyle, market: @vote.market, name: @vote.name, skills: @vote.skills, title: @vote.title }
    end

    assert_redirected_to vote_path(assigns(:vote))
  end

  test "should show vote" do
    get :show, id: @vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote
    assert_response :success
  end

  test "should update vote" do
    put :update, id: @vote, vote: { agglom: @vote.agglom, culture: @vote.culture, diginf: @vote.diginf, env: @vote.env, finance: @vote.finance, inf: @vote.inf, lifestyle: @vote.lifestyle, market: @vote.market, name: @vote.name, skills: @vote.skills, title: @vote.title }
    assert_redirected_to vote_path(assigns(:vote))
  end

  test "should destroy vote" do
    assert_difference('Vote.count', -1) do
      delete :destroy, id: @vote
    end

    assert_redirected_to votes_path
  end
end
