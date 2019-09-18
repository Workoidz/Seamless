require "application_system_test_case"

class ShirtStylesTest < ApplicationSystemTestCase
  setup do
    @shirt_style = shirt_styles(:one)
  end

  test "visiting the index" do
    visit shirt_styles_url
    assert_selector "h1", text: "Shirt Styles"
  end

  test "creating a Shirt style" do
    visit shirt_styles_url
    click_on "New Shirt Style"

    fill_in "Fit", with: @shirt_style.fit
    fill_in "Front cut", with: @shirt_style.front_cut
    fill_in "Lapel", with: @shirt_style.lapel
    fill_in "Master comment", with: @shirt_style.master_comment
    fill_in "Order", with: @shirt_style.order_id
    fill_in "Pocket", with: @shirt_style.pocket
    fill_in "Related pictures", with: @shirt_style.related_pictures
    fill_in "Sleeve placket", with: @shirt_style.sleeve_placket
    fill_in "Style", with: @shirt_style.style
    fill_in "Style for", with: @shirt_style.style_for
    fill_in "Style for fabric picture", with: @shirt_style.style_for_fabric_picture
    fill_in "Vent", with: @shirt_style.vent
    click_on "Create Shirt style"

    assert_text "Shirt style was successfully created"
    click_on "Back"
  end

  test "updating a Shirt style" do
    visit shirt_styles_url
    click_on "Edit", match: :first

    fill_in "Fit", with: @shirt_style.fit
    fill_in "Front cut", with: @shirt_style.front_cut
    fill_in "Lapel", with: @shirt_style.lapel
    fill_in "Master comment", with: @shirt_style.master_comment
    fill_in "Order", with: @shirt_style.order_id
    fill_in "Pocket", with: @shirt_style.pocket
    fill_in "Related pictures", with: @shirt_style.related_pictures
    fill_in "Sleeve placket", with: @shirt_style.sleeve_placket
    fill_in "Style", with: @shirt_style.style
    fill_in "Style for", with: @shirt_style.style_for
    fill_in "Style for fabric picture", with: @shirt_style.style_for_fabric_picture
    fill_in "Vent", with: @shirt_style.vent
    click_on "Update Shirt style"

    assert_text "Shirt style was successfully updated"
    click_on "Back"
  end

  test "destroying a Shirt style" do
    visit shirt_styles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shirt style was successfully destroyed"
  end
end
