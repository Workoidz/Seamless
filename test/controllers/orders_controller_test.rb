require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { balance_clear_status: @order.balance_clear_status, customer_id: @order.customer_id, delivery_date: @order.delivery_date, delivery_status: @order.delivery_status, fabric_advance: @order.fabric_advance, fabric_cost: @order.fabric_cost, master_allocated: @order.master_allocated, order_date: @order.order_date, order_pictures: @order.order_pictures, remark: @order.remark, stitching_advance: @order.stitching_advance, stitching_cost: @order.stitching_cost, trail_date: @order.trail_date, trail_pictures: @order.trail_pictures, trail_status: @order.trail_status } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { balance_clear_status: @order.balance_clear_status, customer_id: @order.customer_id, delivery_date: @order.delivery_date, delivery_status: @order.delivery_status, fabric_advance: @order.fabric_advance, fabric_cost: @order.fabric_cost, master_allocated: @order.master_allocated, order_date: @order.order_date, order_pictures: @order.order_pictures, remark: @order.remark, stitching_advance: @order.stitching_advance, stitching_cost: @order.stitching_cost, trail_date: @order.trail_date, trail_pictures: @order.trail_pictures, trail_status: @order.trail_status } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
