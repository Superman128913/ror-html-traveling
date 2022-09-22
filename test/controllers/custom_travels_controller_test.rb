require "test_helper"

class CustomTravelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_travel = custom_travels(:one)
  end

  test "should get index" do
    get custom_travels_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_travel_url
    assert_response :success
  end

  test "should create custom_travel" do
    assert_difference("CustomTravel.count") do
      post custom_travels_url, params: { custom_travel: { characteristics: @custom_travel.characteristics, comments: @custom_travel.comments, date: @custom_travel.date, departure: @custom_travel.departure, destination: @custom_travel.destination, event: @custom_travel.event, event_bool: @custom_travel.event_bool, physical: @custom_travel.physical, price: @custom_travel.price, rating: @custom_travel.rating } }
    end

    assert_redirected_to custom_travel_url(CustomTravel.last)
  end

  test "should show custom_travel" do
    get custom_travel_url(@custom_travel)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_travel_url(@custom_travel)
    assert_response :success
  end

  test "should update custom_travel" do
    patch custom_travel_url(@custom_travel), params: { custom_travel: { characteristics: @custom_travel.characteristics, comments: @custom_travel.comments, date: @custom_travel.date, departure: @custom_travel.departure, destination: @custom_travel.destination, event: @custom_travel.event, event_bool: @custom_travel.event_bool, physical: @custom_travel.physical, price: @custom_travel.price, rating: @custom_travel.rating } }
    assert_redirected_to custom_travel_url(@custom_travel)
  end

  test "should destroy custom_travel" do
    assert_difference("CustomTravel.count", -1) do
      delete custom_travel_url(@custom_travel)
    end

    assert_redirected_to custom_travels_url
  end
end
