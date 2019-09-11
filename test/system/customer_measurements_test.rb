require "application_system_test_case"

class CustomerMeasurementsTest < ApplicationSystemTestCase
  setup do
    @customer_measurement = customer_measurements(:one)
  end

  test "visiting the index" do
    visit customer_measurements_url
    assert_selector "h1", text: "Customer Measurements"
  end

  test "creating a Customer measurement" do
    visit customer_measurements_url
    click_on "New Customer Measurement"

    fill_in "Customer", with: @customer_measurement.customer_id
    fill_in "Jacket or shirt arm hole round", with: @customer_measurement.jacket_or_shirt_arm_hole_round
    fill_in "Jacket or shirt bicep", with: @customer_measurement.jacket_or_shirt_bicep
    fill_in "Jacket or shirt chest", with: @customer_measurement.jacket_or_shirt_chest
    fill_in "Jacket or shirt cross back", with: @customer_measurement.jacket_or_shirt_cross_back
    fill_in "Jacket or shirt cross front", with: @customer_measurement.jacket_or_shirt_cross_front
    fill_in "Jacket or shirt hale back", with: @customer_measurement.jacket_or_shirt_hale_back
    fill_in "Jacket or shirt hip", with: @customer_measurement.jacket_or_shirt_hip
    fill_in "Jacket or shirt length", with: @customer_measurement.jacket_or_shirt_length
    fill_in "Jacket or shirt neck", with: @customer_measurement.jacket_or_shirt_neck
    fill_in "Jacket or shirt shoulder", with: @customer_measurement.jacket_or_shirt_shoulder
    fill_in "Jacket or shirt sleeve length", with: @customer_measurement.jacket_or_shirt_sleeve_length
    fill_in "Jacket or shirt waist", with: @customer_measurement.jacket_or_shirt_waist
    fill_in "Lower body posture", with: @customer_measurement.lower_body_posture
    fill_in "Trouser bottom", with: @customer_measurement.trouser_bottom
    fill_in "Trouser crotch", with: @customer_measurement.trouser_crotch
    fill_in "Trouser f low", with: @customer_measurement.trouser_f_low
    fill_in "Trouser hip", with: @customer_measurement.trouser_hip
    fill_in "Trouser inseam", with: @customer_measurement.trouser_inseam
    fill_in "Trouser knee", with: @customer_measurement.trouser_knee
    fill_in "Trouser length", with: @customer_measurement.trouser_length
    fill_in "Trouser thigh", with: @customer_measurement.trouser_thigh
    fill_in "Trouser waist", with: @customer_measurement.trouser_waist
    fill_in "Upper body back shape", with: @customer_measurement.upper_body_back_shape
    fill_in "Upper body shoulder", with: @customer_measurement.upper_body_shoulder
    fill_in "Upper body stomach", with: @customer_measurement.upper_body_stomach
    click_on "Create Customer measurement"

    assert_text "Customer measurement was successfully created"
    click_on "Back"
  end

  test "updating a Customer measurement" do
    visit customer_measurements_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @customer_measurement.customer_id
    fill_in "Jacket or shirt arm hole round", with: @customer_measurement.jacket_or_shirt_arm_hole_round
    fill_in "Jacket or shirt bicep", with: @customer_measurement.jacket_or_shirt_bicep
    fill_in "Jacket or shirt chest", with: @customer_measurement.jacket_or_shirt_chest
    fill_in "Jacket or shirt cross back", with: @customer_measurement.jacket_or_shirt_cross_back
    fill_in "Jacket or shirt cross front", with: @customer_measurement.jacket_or_shirt_cross_front
    fill_in "Jacket or shirt hale back", with: @customer_measurement.jacket_or_shirt_hale_back
    fill_in "Jacket or shirt hip", with: @customer_measurement.jacket_or_shirt_hip
    fill_in "Jacket or shirt length", with: @customer_measurement.jacket_or_shirt_length
    fill_in "Jacket or shirt neck", with: @customer_measurement.jacket_or_shirt_neck
    fill_in "Jacket or shirt shoulder", with: @customer_measurement.jacket_or_shirt_shoulder
    fill_in "Jacket or shirt sleeve length", with: @customer_measurement.jacket_or_shirt_sleeve_length
    fill_in "Jacket or shirt waist", with: @customer_measurement.jacket_or_shirt_waist
    fill_in "Lower body posture", with: @customer_measurement.lower_body_posture
    fill_in "Trouser bottom", with: @customer_measurement.trouser_bottom
    fill_in "Trouser crotch", with: @customer_measurement.trouser_crotch
    fill_in "Trouser f low", with: @customer_measurement.trouser_f_low
    fill_in "Trouser hip", with: @customer_measurement.trouser_hip
    fill_in "Trouser inseam", with: @customer_measurement.trouser_inseam
    fill_in "Trouser knee", with: @customer_measurement.trouser_knee
    fill_in "Trouser length", with: @customer_measurement.trouser_length
    fill_in "Trouser thigh", with: @customer_measurement.trouser_thigh
    fill_in "Trouser waist", with: @customer_measurement.trouser_waist
    fill_in "Upper body back shape", with: @customer_measurement.upper_body_back_shape
    fill_in "Upper body shoulder", with: @customer_measurement.upper_body_shoulder
    fill_in "Upper body stomach", with: @customer_measurement.upper_body_stomach
    click_on "Update Customer measurement"

    assert_text "Customer measurement was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer measurement" do
    visit customer_measurements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer measurement was successfully destroyed"
  end
end
