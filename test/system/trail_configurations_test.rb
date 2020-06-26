require "application_system_test_case"

class TrailConfigurationsTest < ApplicationSystemTestCase
  setup do
    @trail_configuration = trail_configurations(:one)
  end

  test "visiting the index" do
    visit trail_configurations_url
    assert_selector "h1", text: "Trail Configurations"
  end

  test "creating a Trail configuration" do
    visit trail_configurations_url
    click_on "New Trail Configuration"

    fill_in "Clinic", with: @trail_configuration.clinic_id
    fill_in "Doctor", with: @trail_configuration.doctor_id
    fill_in "Drug", with: @trail_configuration.drug_id
    click_on "Create Trail configuration"

    assert_text "Trail configuration was successfully created"
    click_on "Back"
  end

  test "updating a Trail configuration" do
    visit trail_configurations_url
    click_on "Edit", match: :first

    fill_in "Clinic", with: @trail_configuration.clinic_id
    fill_in "Doctor", with: @trail_configuration.doctor_id
    fill_in "Drug", with: @trail_configuration.drug_id
    click_on "Update Trail configuration"

    assert_text "Trail configuration was successfully updated"
    click_on "Back"
  end

  test "destroying a Trail configuration" do
    visit trail_configurations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trail configuration was successfully destroyed"
  end
end
