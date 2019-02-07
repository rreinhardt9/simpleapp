require 'test_helper'

class SimpleWidgetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simple_widget = simple_widgets(:one)
  end

  test "should get index" do
    get simple_widgets_url
    assert_response :success
  end

  test "should get new" do
    get new_simple_widget_url
    assert_response :success
  end

  test "should create simple_widget" do
    assert_difference('SimpleWidget.count') do
      post simple_widgets_url, params: { simple_widget: { comments: @simple_widget.comments, count: @simple_widget.count, name: @simple_widget.name } }
    end

    assert_redirected_to simple_widget_url(SimpleWidget.last)
  end

  test "should show simple_widget" do
    get simple_widget_url(@simple_widget)
    assert_response :success
  end

  test "should get edit" do
    get edit_simple_widget_url(@simple_widget)
    assert_response :success
  end

  test "should update simple_widget" do
    patch simple_widget_url(@simple_widget), params: { simple_widget: { comments: @simple_widget.comments, count: @simple_widget.count, name: @simple_widget.name } }
    assert_redirected_to simple_widget_url(@simple_widget)
  end

  test "should destroy simple_widget" do
    assert_difference('SimpleWidget.count', -1) do
      delete simple_widget_url(@simple_widget)
    end

    assert_redirected_to simple_widgets_url
  end
end
