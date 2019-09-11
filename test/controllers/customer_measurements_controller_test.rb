require 'test_helper'

class CustomerMeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_measurement = customer_measurements(:one)
  end

  test "should get index" do
    get customer_measurements_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_measurement_url
    assert_response :success
  end

  test "should create customer_measurement" do
    assert_difference('CustomerMeasurement.count') do
      post customer_measurements_url, params: { customer_measurement: { customer_id: @customer_measurement.customer_id, jacket_or_shirt_arm_hole_round: @customer_measurement.jacket_or_shirt_arm_hole_round, jacket_or_shirt_bicep: @customer_measurement.jacket_or_shirt_bicep, jacket_or_shirt_chest: @customer_measurement.jacket_or_shirt_chest, jacket_or_shirt_cross_back: @customer_measurement.jacket_or_shirt_cross_back, jacket_or_shirt_cross_front: @customer_measurement.jacket_or_shirt_cross_front, jacket_or_shirt_hale_back: @customer_measurement.jacket_or_shirt_hale_back, jacket_or_shirt_hip: @customer_measurement.jacket_or_shirt_hip, jacket_or_shirt_length: @customer_measurement.jacket_or_shirt_length, jacket_or_shirt_neck: @customer_measurement.jacket_or_shirt_neck, jacket_or_shirt_shoulder: @customer_measurement.jacket_or_shirt_shoulder, jacket_or_shirt_sleeve_length: @customer_measurement.jacket_or_shirt_sleeve_length, jacket_or_shirt_waist: @customer_measurement.jacket_or_shirt_waist, lower_body_posture: @customer_measurement.lower_body_posture, trouser_bottom: @customer_measurement.trouser_bottom, trouser_crotch: @customer_measurement.trouser_crotch, trouser_f_low: @customer_measurement.trouser_f_low, trouser_hip: @customer_measurement.trouser_hip, trouser_inseam: @customer_measurement.trouser_inseam, trouser_knee: @customer_measurement.trouser_knee, trouser_length: @customer_measurement.trouser_length, trouser_thigh: @customer_measurement.trouser_thigh, trouser_waist: @customer_measurement.trouser_waist, upper_body_back_shape: @customer_measurement.upper_body_back_shape, upper_body_shoulder: @customer_measurement.upper_body_shoulder, upper_body_stomach: @customer_measurement.upper_body_stomach } }
    end

    assert_redirected_to customer_measurement_url(CustomerMeasurement.last)
  end

  test "should show customer_measurement" do
    get customer_measurement_url(@customer_measurement)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_measurement_url(@customer_measurement)
    assert_response :success
  end

  test "should update customer_measurement" do
    patch customer_measurement_url(@customer_measurement), params: { customer_measurement: { customer_id: @customer_measurement.customer_id, jacket_or_shirt_arm_hole_round: @customer_measurement.jacket_or_shirt_arm_hole_round, jacket_or_shirt_bicep: @customer_measurement.jacket_or_shirt_bicep, jacket_or_shirt_chest: @customer_measurement.jacket_or_shirt_chest, jacket_or_shirt_cross_back: @customer_measurement.jacket_or_shirt_cross_back, jacket_or_shirt_cross_front: @customer_measurement.jacket_or_shirt_cross_front, jacket_or_shirt_hale_back: @customer_measurement.jacket_or_shirt_hale_back, jacket_or_shirt_hip: @customer_measurement.jacket_or_shirt_hip, jacket_or_shirt_length: @customer_measurement.jacket_or_shirt_length, jacket_or_shirt_neck: @customer_measurement.jacket_or_shirt_neck, jacket_or_shirt_shoulder: @customer_measurement.jacket_or_shirt_shoulder, jacket_or_shirt_sleeve_length: @customer_measurement.jacket_or_shirt_sleeve_length, jacket_or_shirt_waist: @customer_measurement.jacket_or_shirt_waist, lower_body_posture: @customer_measurement.lower_body_posture, trouser_bottom: @customer_measurement.trouser_bottom, trouser_crotch: @customer_measurement.trouser_crotch, trouser_f_low: @customer_measurement.trouser_f_low, trouser_hip: @customer_measurement.trouser_hip, trouser_inseam: @customer_measurement.trouser_inseam, trouser_knee: @customer_measurement.trouser_knee, trouser_length: @customer_measurement.trouser_length, trouser_thigh: @customer_measurement.trouser_thigh, trouser_waist: @customer_measurement.trouser_waist, upper_body_back_shape: @customer_measurement.upper_body_back_shape, upper_body_shoulder: @customer_measurement.upper_body_shoulder, upper_body_stomach: @customer_measurement.upper_body_stomach } }
    assert_redirected_to customer_measurement_url(@customer_measurement)
  end

  test "should destroy customer_measurement" do
    assert_difference('CustomerMeasurement.count', -1) do
      delete customer_measurement_url(@customer_measurement)
    end

    assert_redirected_to customer_measurements_url
  end
end
