require "application_system_test_case"

class CustomTravelsTest < ApplicationSystemTestCase
  setup do
    @custom_travel = custom_travels(:one)
  end

  test "visiting the index" do
    visit custom_travels_url
    assert_selector "h1", text: "Custom travels"
  end

  test "should create custom travel" do
    visit custom_travels_url
    click_on "New custom travel"

    fill_in "Characteristics", with: @custom_travel.characteristics
    fill_in "Comments", with: @custom_travel.comments
    fill_in "Date", with: @custom_travel.date
    fill_in "Departure", with: @custom_travel.departure
    fill_in "Destination", with: @custom_travel.destination
    fill_in "Event", with: @custom_travel.event
    check "Event bool" if @custom_travel.event_bool
    fill_in "Physical", with: @custom_travel.physical
    fill_in "Price", with: @custom_travel.price
    fill_in "Rating", with: @custom_travel.rating
    click_on "Create Custom travel"

    assert_text "Custom travel was successfully created"
    click_on "Back"
  end

  test "should update Custom travel" do
    visit custom_travel_url(@custom_travel)
    click_on "Edit this custom travel", match: :first

    fill_in "Characteristics", with: @custom_travel.characteristics
    fill_in "Comments", with: @custom_travel.comments
    fill_in "Date", with: @custom_travel.date
    fill_in "Departure", with: @custom_travel.departure
    fill_in "Destination", with: @custom_travel.destination
    fill_in "Event", with: @custom_travel.event
    check "Event bool" if @custom_travel.event_bool
    fill_in "Physical", with: @custom_travel.physical
    fill_in "Price", with: @custom_travel.price
    fill_in "Rating", with: @custom_travel.rating
    click_on "Update Custom travel"

    assert_text "Custom travel was successfully updated"
    click_on "Back"
  end

  test "should destroy Custom travel" do
    visit custom_travel_url(@custom_travel)
    click_on "Destroy this custom travel", match: :first

    assert_text "Custom travel was successfully destroyed"
  end
end
