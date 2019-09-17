require "application_system_test_case"

class OrderMeasurementsTest < ApplicationSystemTestCase
  setup do
    @order_measurement = order_measurements(:one)
  end

  test "visiting the index" do
    visit order_measurements_url
    assert_selector "h1", text: "Order Measurements"
  end

  test "creating a Order measurement" do
    visit order_measurements_url
    click_on "New Order Measurement"

    fill_in "Jacket or shirt arm hole round", with: @order_measurement.jacket_or_shirt_arm_hole_round
    fill_in "Jacket or shirt bicep", with: @order_measurement.jacket_or_shirt_bicep
    fill_in "Jacket or shirt chest", with: @order_measurement.jacket_or_shirt_chest
    fill_in "Jacket or shirt cross back", with: @order_measurement.jacket_or_shirt_cross_back
    fill_in "Jacket or shirt cross front", with: @order_measurement.jacket_or_shirt_cross_front
    fill_in "Jacket or shirt hale back", with: @order_measurement.jacket_or_shirt_hale_back
    fill_in "Jacket or shirt hip", with: @order_measurement.jacket_or_shirt_hip
    fill_in "Jacket or shirt length", with: @order_measurement.jacket_or_shirt_length
    fill_in "Jacket or shirt neck", with: @order_measurement.jacket_or_shirt_neck
    fill_in "Jacket or shirt shoulder", with: @order_measurement.jacket_or_shirt_shoulder
    fill_in "Jacket or shirt sleeve length", with: @order_measurement.jacket_or_shirt_sleeve_length
    fill_in "Jacket or shirt waist", with: @order_measurement.jacket_or_shirt_waist
    fill_in "Lower body posture", with: @order_measurement.lower_body_posture
    fill_in "Order", with: @order_measurement.order_id
    fill_in "Trouser bottom", with: @order_measurement.trouser_bottom
    fill_in "Trouser crotch", with: @order_measurement.trouser_crotch
    fill_in "Trouser f low", with: @order_measurement.trouser_f_low
    fill_in "Trouser hip", with: @order_measurement.trouser_hip
    fill_in "Trouser inseam", with: @order_measurement.trouser_inseam
    fill_in "Trouser knee", with: @order_measurement.trouser_knee
    fill_in "Trouser length", with: @order_measurement.trouser_length
    fill_in "Trouser thigh", with: @order_measurement.trouser_thigh
    fill_in "Trouser waist", with: @order_measurement.trouser_waist
    fill_in "Upper body back shape", with: @order_measurement.upper_body_back_shape
    fill_in "Upper body shoulder", with: @order_measurement.upper_body_shoulder
    fill_in "Upper body stomach", with: @order_measurement.upper_body_stomach
    click_on "Create Order measurement"

    assert_text "Order measurement was successfully created"
    click_on "Back"
  end

  test "updating a Order measurement" do
    visit order_measurements_url
    click_on "Edit", match: :first

    fill_in "Jacket or shirt arm hole round", with: @order_measurement.jacket_or_shirt_arm_hole_round
    fill_in "Jacket or shirt bicep", with: @order_measurement.jacket_or_shirt_bicep
    fill_in "Jacket or shirt chest", with: @order_measurement.jacket_or_shirt_chest
    fill_in "Jacket or shirt cross back", with: @order_measurement.jacket_or_shirt_cross_back
    fill_in "Jacket or shirt cross front", with: @order_measurement.jacket_or_shirt_cross_front
    fill_in "Jacket or shirt hale back", with: @order_measurement.jacket_or_shirt_hale_back
    fill_in "Jacket or shirt hip", with: @order_measurement.jacket_or_shirt_hip
    fill_in "Jacket or shirt length", with: @order_measurement.jacket_or_shirt_length
    fill_in "Jacket or shirt neck", with: @order_measurement.jacket_or_shirt_neck
    fill_in "Jacket or shirt shoulder", with: @order_measurement.jacket_or_shirt_shoulder
    fill_in "Jacket or shirt sleeve length", with: @order_measurement.jacket_or_shirt_sleeve_length
    fill_in "Jacket or shirt waist", with: @order_measurement.jacket_or_shirt_waist
    fill_in "Lower body posture", with: @order_measurement.lower_body_posture
    fill_in "Order", with: @order_measurement.order_id
    fill_in "Trouser bottom", with: @order_measurement.trouser_bottom
    fill_in "Trouser crotch", with: @order_measurement.trouser_crotch
    fill_in "Trouser f low", with: @order_measurement.trouser_f_low
    fill_in "Trouser hip", with: @order_measurement.trouser_hip
    fill_in "Trouser inseam", with: @order_measurement.trouser_inseam
    fill_in "Trouser knee", with: @order_measurement.trouser_knee
    fill_in "Trouser length", with: @order_measurement.trouser_length
    fill_in "Trouser thigh", with: @order_measurement.trouser_thigh
    fill_in "Trouser waist", with: @order_measurement.trouser_waist
    fill_in "Upper body back shape", with: @order_measurement.upper_body_back_shape
    fill_in "Upper body shoulder", with: @order_measurement.upper_body_shoulder
    fill_in "Upper body stomach", with: @order_measurement.upper_body_stomach
    click_on "Update Order measurement"

    assert_text "Order measurement was successfully updated"
    click_on "Back"
  end

  test "destroying a Order measurement" do
    visit order_measurements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order measurement was successfully destroyed"
  end
end
