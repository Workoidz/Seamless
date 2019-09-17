require 'test_helper'

class OrderMeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_measurement = order_measurements(:one)
  end

  test "should get index" do
    get order_measurements_url
    assert_response :success
  end

  test "should get new" do
    get new_order_measurement_url
    assert_response :success
  end

  test "should create order_measurement" do
    assert_difference('OrderMeasurement.count') do
      post order_measurements_url, params: { order_measurement: { jacket_or_shirt_arm_hole_round: @order_measurement.jacket_or_shirt_arm_hole_round, jacket_or_shirt_bicep: @order_measurement.jacket_or_shirt_bicep, jacket_or_shirt_chest: @order_measurement.jacket_or_shirt_chest, jacket_or_shirt_cross_back: @order_measurement.jacket_or_shirt_cross_back, jacket_or_shirt_cross_front: @order_measurement.jacket_or_shirt_cross_front, jacket_or_shirt_hale_back: @order_measurement.jacket_or_shirt_hale_back, jacket_or_shirt_hip: @order_measurement.jacket_or_shirt_hip, jacket_or_shirt_length: @order_measurement.jacket_or_shirt_length, jacket_or_shirt_neck: @order_measurement.jacket_or_shirt_neck, jacket_or_shirt_shoulder: @order_measurement.jacket_or_shirt_shoulder, jacket_or_shirt_sleeve_length: @order_measurement.jacket_or_shirt_sleeve_length, jacket_or_shirt_waist: @order_measurement.jacket_or_shirt_waist, lower_body_posture: @order_measurement.lower_body_posture, order_id: @order_measurement.order_id, trouser_bottom: @order_measurement.trouser_bottom, trouser_crotch: @order_measurement.trouser_crotch, trouser_f_low: @order_measurement.trouser_f_low, trouser_hip: @order_measurement.trouser_hip, trouser_inseam: @order_measurement.trouser_inseam, trouser_knee: @order_measurement.trouser_knee, trouser_length: @order_measurement.trouser_length, trouser_thigh: @order_measurement.trouser_thigh, trouser_waist: @order_measurement.trouser_waist, upper_body_back_shape: @order_measurement.upper_body_back_shape, upper_body_shoulder: @order_measurement.upper_body_shoulder, upper_body_stomach: @order_measurement.upper_body_stomach } }
    end

    assert_redirected_to order_measurement_url(OrderMeasurement.last)
  end

  test "should show order_measurement" do
    get order_measurement_url(@order_measurement)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_measurement_url(@order_measurement)
    assert_response :success
  end

  test "should update order_measurement" do
    patch order_measurement_url(@order_measurement), params: { order_measurement: { jacket_or_shirt_arm_hole_round: @order_measurement.jacket_or_shirt_arm_hole_round, jacket_or_shirt_bicep: @order_measurement.jacket_or_shirt_bicep, jacket_or_shirt_chest: @order_measurement.jacket_or_shirt_chest, jacket_or_shirt_cross_back: @order_measurement.jacket_or_shirt_cross_back, jacket_or_shirt_cross_front: @order_measurement.jacket_or_shirt_cross_front, jacket_or_shirt_hale_back: @order_measurement.jacket_or_shirt_hale_back, jacket_or_shirt_hip: @order_measurement.jacket_or_shirt_hip, jacket_or_shirt_length: @order_measurement.jacket_or_shirt_length, jacket_or_shirt_neck: @order_measurement.jacket_or_shirt_neck, jacket_or_shirt_shoulder: @order_measurement.jacket_or_shirt_shoulder, jacket_or_shirt_sleeve_length: @order_measurement.jacket_or_shirt_sleeve_length, jacket_or_shirt_waist: @order_measurement.jacket_or_shirt_waist, lower_body_posture: @order_measurement.lower_body_posture, order_id: @order_measurement.order_id, trouser_bottom: @order_measurement.trouser_bottom, trouser_crotch: @order_measurement.trouser_crotch, trouser_f_low: @order_measurement.trouser_f_low, trouser_hip: @order_measurement.trouser_hip, trouser_inseam: @order_measurement.trouser_inseam, trouser_knee: @order_measurement.trouser_knee, trouser_length: @order_measurement.trouser_length, trouser_thigh: @order_measurement.trouser_thigh, trouser_waist: @order_measurement.trouser_waist, upper_body_back_shape: @order_measurement.upper_body_back_shape, upper_body_shoulder: @order_measurement.upper_body_shoulder, upper_body_stomach: @order_measurement.upper_body_stomach } }
    assert_redirected_to order_measurement_url(@order_measurement)
  end

  test "should destroy order_measurement" do
    assert_difference('OrderMeasurement.count', -1) do
      delete order_measurement_url(@order_measurement)
    end

    assert_redirected_to order_measurements_url
  end
end
