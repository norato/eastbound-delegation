require 'test_helper'

class DelegatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delegate = delegates(:one)
  end

  test "should get index" do
    get delegates_url
    assert_response :success
  end

  test "should get new" do
    get new_delegate_url
    assert_response :success
  end

  test "should create delegate" do
    assert_difference('Delegate.count') do
      post delegates_url, params: { delegate: { post_comma: @delegate.post_comma, pre_comma: @delegate.pre_comma, primary_funding_url: @delegate.primary_funding_url, state: @delegate.state } }
    end

    assert_redirected_to delegate_path(Delegate.last)
  end

  test "should show delegate" do
    get delegate_url(@delegate)
    assert_response :success
  end

  test "should get edit" do
    get edit_delegate_url(@delegate)
    assert_response :success
  end

  test "should update delegate" do
    patch delegate_url(@delegate), params: { delegate: { post_comma: @delegate.post_comma, pre_comma: @delegate.pre_comma, primary_funding_url: @delegate.primary_funding_url, state: @delegate.state } }
    assert_redirected_to delegate_path(@delegate)
  end

  test "should destroy delegate" do
    assert_difference('Delegate.count', -1) do
      delete delegate_url(@delegate)
    end

    assert_redirected_to delegates_path
  end
end
