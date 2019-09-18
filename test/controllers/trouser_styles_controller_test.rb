require 'test_helper'

class TrouserStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trouser_style = trouser_styles(:one)
  end

  test "should get index" do
    get trouser_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_trouser_style_url
    assert_response :success
  end

  test "should create trouser_style" do
    assert_difference('TrouserStyle.count') do
      post trouser_styles_url, params: { trouser_style: { back_pocket: @trouser_style.back_pocket, belt: @trouser_style.belt, bottom: @trouser_style.bottom, fit: @trouser_style.fit, loops: @trouser_style.loops, master_comment: @trouser_style.master_comment, order_id: @trouser_style.order_id, pleat: @trouser_style.pleat, pocket: @trouser_style.pocket, related_pictures: @trouser_style.related_pictures, style_for: @trouser_style.style_for, style_for_fabric_picture: @trouser_style.style_for_fabric_picture } }
    end

    assert_redirected_to trouser_style_url(TrouserStyle.last)
  end

  test "should show trouser_style" do
    get trouser_style_url(@trouser_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_trouser_style_url(@trouser_style)
    assert_response :success
  end

  test "should update trouser_style" do
    patch trouser_style_url(@trouser_style), params: { trouser_style: { back_pocket: @trouser_style.back_pocket, belt: @trouser_style.belt, bottom: @trouser_style.bottom, fit: @trouser_style.fit, loops: @trouser_style.loops, master_comment: @trouser_style.master_comment, order_id: @trouser_style.order_id, pleat: @trouser_style.pleat, pocket: @trouser_style.pocket, related_pictures: @trouser_style.related_pictures, style_for: @trouser_style.style_for, style_for_fabric_picture: @trouser_style.style_for_fabric_picture } }
    assert_redirected_to trouser_style_url(@trouser_style)
  end

  test "should destroy trouser_style" do
    assert_difference('TrouserStyle.count', -1) do
      delete trouser_style_url(@trouser_style)
    end

    assert_redirected_to trouser_styles_url
  end
end
