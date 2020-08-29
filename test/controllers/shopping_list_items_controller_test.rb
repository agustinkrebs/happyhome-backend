require 'test_helper'

class ShoppingListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopping_list_item = shopping_list_items(:one)
  end

  test "should get index" do
    get shopping_list_items_url, as: :json
    assert_response :success
  end

  test "should create shopping_list_item" do
    assert_difference('ShoppingListItem.count') do
      post shopping_list_items_url, params: { shopping_list_item: { comment: @shopping_list_item.comment, family_user_id: @shopping_list_item.family_user_id, name: @shopping_list_item.name, quantity: @shopping_list_item.quantity, shopping_list_id: @shopping_list_item.shopping_list_id } }, as: :json
    end

    assert_response 201
  end

  test "should show shopping_list_item" do
    get shopping_list_item_url(@shopping_list_item), as: :json
    assert_response :success
  end

  test "should update shopping_list_item" do
    patch shopping_list_item_url(@shopping_list_item), params: { shopping_list_item: { comment: @shopping_list_item.comment, family_user_id: @shopping_list_item.family_user_id, name: @shopping_list_item.name, quantity: @shopping_list_item.quantity, shopping_list_id: @shopping_list_item.shopping_list_id } }, as: :json
    assert_response 200
  end

  test "should destroy shopping_list_item" do
    assert_difference('ShoppingListItem.count', -1) do
      delete shopping_list_item_url(@shopping_list_item), as: :json
    end

    assert_response 204
  end
end
