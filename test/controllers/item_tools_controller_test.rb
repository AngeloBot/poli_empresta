require 'test_helper'

class ItemToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_tool = item_tools(:one)
  end

  test "should get index" do
    get item_tools_url
    assert_response :success
  end

  test "should get new" do
    get new_item_tool_url
    assert_response :success
  end

  test "should create item_tool" do
    assert_difference('ItemTool.count') do
      post item_tools_url, params: { item_tool: { loan_id: @item_tool.loan_id, tool_id: @item_tool.tool_id, tool_quantity: @item_tool.tool_quantity } }
    end

    assert_redirected_to item_tool_url(ItemTool.last)
  end

  test "should show item_tool" do
    get item_tool_url(@item_tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_tool_url(@item_tool)
    assert_response :success
  end

  test "should update item_tool" do
    patch item_tool_url(@item_tool), params: { item_tool: { loan_id: @item_tool.loan_id, tool_id: @item_tool.tool_id, tool_quantity: @item_tool.tool_quantity } }
    assert_redirected_to item_tool_url(@item_tool)
  end

  test "should destroy item_tool" do
    assert_difference('ItemTool.count', -1) do
      delete item_tool_url(@item_tool)
    end

    assert_redirected_to item_tools_url
  end
end
