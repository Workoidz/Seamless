require "application_system_test_case"

class TrouserStylesTest < ApplicationSystemTestCase
  setup do
    @trouser_style = trouser_styles(:one)
  end

  test "visiting the index" do
    visit trouser_styles_url
    assert_selector "h1", text: "Trouser Styles"
  end

  test "creating a Trouser style" do
    visit trouser_styles_url
    click_on "New Trouser Style"

    fill_in "Back pocket", with: @trouser_style.back_pocket
    fill_in "Belt", with: @trouser_style.belt
    fill_in "Bottom", with: @trouser_style.bottom
    fill_in "Fit", with: @trouser_style.fit
    fill_in "Loops", with: @trouser_style.loops
    fill_in "Master comment", with: @trouser_style.master_comment
    fill_in "Order", with: @trouser_style.order_id
    fill_in "Pleat", with: @trouser_style.pleat
    fill_in "Pocket", with: @trouser_style.pocket
    fill_in "Related pictures", with: @trouser_style.related_pictures
    fill_in "Style for", with: @trouser_style.style_for
    fill_in "Style for fabric picture", with: @trouser_style.style_for_fabric_picture
    click_on "Create Trouser style"

    assert_text "Trouser style was successfully created"
    click_on "Back"
  end

  test "updating a Trouser style" do
    visit trouser_styles_url
    click_on "Edit", match: :first

    fill_in "Back pocket", with: @trouser_style.back_pocket
    fill_in "Belt", with: @trouser_style.belt
    fill_in "Bottom", with: @trouser_style.bottom
    fill_in "Fit", with: @trouser_style.fit
    fill_in "Loops", with: @trouser_style.loops
    fill_in "Master comment", with: @trouser_style.master_comment
    fill_in "Order", with: @trouser_style.order_id
    fill_in "Pleat", with: @trouser_style.pleat
    fill_in "Pocket", with: @trouser_style.pocket
    fill_in "Related pictures", with: @trouser_style.related_pictures
    fill_in "Style for", with: @trouser_style.style_for
    fill_in "Style for fabric picture", with: @trouser_style.style_for_fabric_picture
    click_on "Update Trouser style"

    assert_text "Trouser style was successfully updated"
    click_on "Back"
  end

  test "destroying a Trouser style" do
    visit trouser_styles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trouser style was successfully destroyed"
  end
end
