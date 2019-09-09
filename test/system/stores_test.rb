require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "creating a Store" do
    visit stores_url
    click_on "New Store"

    fill_in "Address", with: @store.address
    fill_in "Contact number", with: @store.contact_number
    fill_in "Contact person name", with: @store.contact_person_name
    fill_in "Email", with: @store.email
    fill_in "Facebook link", with: @store.facebook_link
    fill_in "Instagram link", with: @store.instagram_link
    fill_in "Logo", with: @store.logo
    fill_in "Store name", with: @store.store_name
    fill_in "Website", with: @store.website
    fill_in "Whatsapp number", with: @store.whatsapp_number
    fill_in "Youtube link", with: @store.youtube_link
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "updating a Store" do
    visit stores_url
    click_on "Edit", match: :first

    fill_in "Address", with: @store.address
    fill_in "Contact number", with: @store.contact_number
    fill_in "Contact person name", with: @store.contact_person_name
    fill_in "Email", with: @store.email
    fill_in "Facebook link", with: @store.facebook_link
    fill_in "Instagram link", with: @store.instagram_link
    fill_in "Logo", with: @store.logo
    fill_in "Store name", with: @store.store_name
    fill_in "Website", with: @store.website
    fill_in "Whatsapp number", with: @store.whatsapp_number
    fill_in "Youtube link", with: @store.youtube_link
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "destroying a Store" do
    visit stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store was successfully destroyed"
  end
end
