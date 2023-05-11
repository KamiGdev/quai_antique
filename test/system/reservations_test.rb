require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "should create reservation" do
    visit reservations_url
    click_on "New reservation"

    fill_in "Allergy", with: @reservation.allergy
    fill_in "Date", with: @reservation.date
    fill_in "People number", with: @reservation.people_number
    fill_in "Phone number", with: @reservation.phone_number
    fill_in "Time", with: @reservation.time
    fill_in "User", with: @reservation.user_id
    click_on "Create Reservation"

    assert_text "Merci, votre réservation a été prise en compte. A bientôt !"
    click_on "Back"
  end

  test "should update Reservation" do
    visit reservation_url(@reservation)
    click_on "Edit this reservation", match: :first

    fill_in "Allergy", with: @reservation.allergy
    fill_in "Date", with: @reservation.date
    fill_in "People number", with: @reservation.people_number
    fill_in "Phone number", with: @reservation.phone_number
    fill_in "Time", with: @reservation.time
    fill_in "User", with: @reservation.user_id
    click_on "Update Reservation"

    assert_text "La réservation a été modifiée."
    click_on "Back"
  end

  test "should destroy Reservation" do
    visit reservation_url(@reservation)
    click_on "Destroy this reservation", match: :first

    assert_text "La réservation a été supprimée."
  end
end
