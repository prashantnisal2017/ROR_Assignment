require 'test_helper'

class ClinicDoctorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clinic_doctors_index_url
    assert_response :success
  end

  test "should get show" do
    get clinic_doctors_show_url
    assert_response :success
  end

  test "should get new" do
    get clinic_doctors_new_url
    assert_response :success
  end

  test "should get edit" do
    get clinic_doctors_edit_url
    assert_response :success
  end

  test "should get creat" do
    get clinic_doctors_creat_url
    assert_response :success
  end

  test "should get update" do
    get clinic_doctors_update_url
    assert_response :success
  end

  test "should get destroy" do
    get clinic_doctors_destroy_url
    assert_response :success
  end

end
