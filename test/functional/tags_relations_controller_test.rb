require 'test_helper'

class TagsRelationsControllerTest < ActionController::TestCase
  setup do
    @tags_relation = tags_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tags_relation" do
    assert_difference('TagsRelation.count') do
      post :create, :tags_relation => @tags_relation.attributes
    end

    assert_redirected_to tags_relation_path(assigns(:tags_relation))
  end

  test "should show tags_relation" do
    get :show, :id => @tags_relation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tags_relation.to_param
    assert_response :success
  end

  test "should update tags_relation" do
    put :update, :id => @tags_relation.to_param, :tags_relation => @tags_relation.attributes
    assert_redirected_to tags_relation_path(assigns(:tags_relation))
  end

  test "should destroy tags_relation" do
    assert_difference('TagsRelation.count', -1) do
      delete :destroy, :id => @tags_relation.to_param
    end

    assert_redirected_to tags_relations_path
  end
end
