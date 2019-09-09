require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get stores_url
    assert_response :success
  end

  test "should get new" do
    get new_store_url
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post stores_url, params: { store: { address: @store.address, contact_number: @store.contact_number, contact_person_name: @store.contact_person_name, email: @store.email, facebook_link: @store.facebook_link, instagram_link: @store.instagram_link, logo: @store.logo, store_name: @store.store_name, website: @store.website, whatsapp_number: @store.whatsapp_number, youtube_link: @store.youtube_link } }
    end

    assert_redirected_to store_url(Store.last)
  end

  test "should show store" do
    get store_url(@store)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_url(@store)
    assert_response :success
  end

  test "should update store" do
    patch store_url(@store), params: { store: { address: @store.address, contact_number: @store.contact_number, contact_person_name: @store.contact_person_name, email: @store.email, facebook_link: @store.facebook_link, instagram_link: @store.instagram_link, logo: @store.logo, store_name: @store.store_name, website: @store.website, whatsapp_number: @store.whatsapp_number, youtube_link: @store.youtube_link } }
    assert_redirected_to store_url(@store)
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete store_url(@store)
    end

    assert_redirected_to stores_url
  end
end
