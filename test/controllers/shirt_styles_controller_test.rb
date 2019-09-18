require 'test_helper'

class ShirtStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shirt_style = shirt_styles(:one)
  end

  test "should get index" do
    get shirt_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_shirt_style_url
    assert_response :success
  end

  test "should create shirt_style" do
    assert_difference('ShirtStyle.count') do
      post shirt_styles_url, params: { shirt_style: { fit: @shirt_style.fit, front_cut: @shirt_style.front_cut, lapel: @shirt_style.lapel, master_comment: @shirt_style.master_comment, order_id: @shirt_style.order_id, pocket: @shirt_style.pocket, related_pictures: @shirt_style.related_pictures, sleeve_placket: @shirt_style.sleeve_placket, style: @shirt_style.style, style_for: @shirt_style.style_for, style_for_fabric_picture: @shirt_style.style_for_fabric_picture, vent: @shirt_style.vent } }
    end

    assert_redirected_to shirt_style_url(ShirtStyle.last)
  end

  test "should show shirt_style" do
    get shirt_style_url(@shirt_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_shirt_style_url(@shirt_style)
    assert_response :success
  end

  test "should update shirt_style" do
    patch shirt_style_url(@shirt_style), params: { shirt_style: { fit: @shirt_style.fit, front_cut: @shirt_style.front_cut, lapel: @shirt_style.lapel, master_comment: @shirt_style.master_comment, order_id: @shirt_style.order_id, pocket: @shirt_style.pocket, related_pictures: @shirt_style.related_pictures, sleeve_placket: @shirt_style.sleeve_placket, style: @shirt_style.style, style_for: @shirt_style.style_for, style_for_fabric_picture: @shirt_style.style_for_fabric_picture, vent: @shirt_style.vent } }
    assert_redirected_to shirt_style_url(@shirt_style)
  end

  test "should destroy shirt_style" do
    assert_difference('ShirtStyle.count', -1) do
      delete shirt_style_url(@shirt_style)
    end

    assert_redirected_to shirt_styles_url
  end
end
