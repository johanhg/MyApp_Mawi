require "application_system_test_case"

class DatosTest < ApplicationSystemTestCase
  setup do
    @dato = datos(:one)
  end

  test "visiting the index" do
    visit datos_url
    assert_selector "h1", text: "Datos"
  end

  test "creating a Dato" do
    visit datos_url
    click_on "New Dato"

    fill_in "Amount", with: @dato.amount
    fill_in "Email", with: @dato.email
    fill_in "Frecuency", with: @dato.frecuency
    fill_in "Name", with: @dato.name
    fill_in "Paytime", with: @dato.payTime
    fill_in "Sector", with: @dato.sector
    fill_in "Totalingress", with: @dato.totalIngress
    fill_in "Workyears", with: @dato.workYears
    click_on "Create Dato"

    assert_text "Dato was successfully created"
    click_on "Back"
  end

  test "updating a Dato" do
    visit datos_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @dato.amount
    fill_in "Email", with: @dato.email
    fill_in "Frecuency", with: @dato.frecuency
    fill_in "Name", with: @dato.name
    fill_in "Paytime", with: @dato.payTime
    fill_in "Sector", with: @dato.sector
    fill_in "Totalingress", with: @dato.totalIngress
    fill_in "Workyears", with: @dato.workYears
    click_on "Update Dato"

    assert_text "Dato was successfully updated"
    click_on "Back"
  end

  test "destroying a Dato" do
    visit datos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dato was successfully destroyed"
  end
end
