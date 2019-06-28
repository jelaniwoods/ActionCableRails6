require 'test_helper'

class ContextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @context = contexts(:one)
  end

  test "should get index" do
    get contexts_url
    assert_response :success
  end

  test "should get new" do
    get new_context_url
    assert_response :success
  end

  test "should create context" do
    assert_difference('Context.count') do
      post contexts_url, params: { context: { id_from_tc: @context.id_from_tc, title: @context.title } }
    end

    assert_redirected_to context_url(Context.last)
  end

  test "should show context" do
    get context_url(@context)
    assert_response :success
  end

  test "should get edit" do
    get edit_context_url(@context)
    assert_response :success
  end

  test "should update context" do
    patch context_url(@context), params: { context: { id_from_tc: @context.id_from_tc, title: @context.title } }
    assert_redirected_to context_url(@context)
  end

  test "should destroy context" do
    assert_difference('Context.count', -1) do
      delete context_url(@context)
    end

    assert_redirected_to contexts_url
  end
end
