require 'test_helper'

class FamilyUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_user = family_users(:one)
  end

  test "should get index" do
    get family_users_url, as: :json
    assert_response :success
  end

  test "should create family_user" do
    assert_difference('FamilyUser.count') do
      post family_users_url, params: { family_user: { name: @family_user.name, user_id: @family_user.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show family_user" do
    get family_user_url(@family_user), as: :json
    assert_response :success
  end

  test "should update family_user" do
    patch family_user_url(@family_user), params: { family_user: { name: @family_user.name, user_id: @family_user.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy family_user" do
    assert_difference('FamilyUser.count', -1) do
      delete family_user_url(@family_user), as: :json
    end

    assert_response 204
  end
end
