require 'test_helper'

class TrailConfigurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trail_configuration = trail_configurations(:one)
  end

  test "should get index" do
    get trail_configurations_url
    assert_response :success
  end

  test "should get new" do
    get new_trail_configuration_url
    assert_response :success
  end

  test "should create trail_configuration" do
    assert_difference('TrailConfiguration.count') do
      post trail_configurations_url, params: { trail_configuration: { clinic_id: @trail_configuration.clinic_id, doctor_id: @trail_configuration.doctor_id, drug_id: @trail_configuration.drug_id } }
    end

    assert_redirected_to trail_configuration_url(TrailConfiguration.last)
  end

  test "should show trail_configuration" do
    get trail_configuration_url(@trail_configuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_trail_configuration_url(@trail_configuration)
    assert_response :success
  end

  test "should update trail_configuration" do
    patch trail_configuration_url(@trail_configuration), params: { trail_configuration: { clinic_id: @trail_configuration.clinic_id, doctor_id: @trail_configuration.doctor_id, drug_id: @trail_configuration.drug_id } }
    assert_redirected_to trail_configuration_url(@trail_configuration)
  end

  test "should destroy trail_configuration" do
    assert_difference('TrailConfiguration.count', -1) do
      delete trail_configuration_url(@trail_configuration)
    end

    assert_redirected_to trail_configurations_url
  end
end
