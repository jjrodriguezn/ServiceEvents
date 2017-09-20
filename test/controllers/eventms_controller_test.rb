require 'test_helper'

class EventmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventm = eventms(:one)
  end

  test "should get index" do
    get eventms_url, as: :json
    assert_response :success
  end

  test "should create eventm" do
    assert_difference('Eventm.count') do
      post eventms_url, params: { eventm: { address: @eventm.address, description: @eventm.description, end_time: @eventm.end_time, latitude: @eventm.latitude, longitude: @eventm.longitude, name: @eventm.name, owner_id: @eventm.owner_id, phone: @eventm.phone, start_time: @eventm.start_time } }, as: :json
    end

    assert_response 201
  end

  test "should show eventm" do
    get eventm_url(@eventm), as: :json
    assert_response :success
  end

  test "should update eventm" do
    patch eventm_url(@eventm), params: { eventm: { address: @eventm.address, description: @eventm.description, end_time: @eventm.end_time, latitude: @eventm.latitude, longitude: @eventm.longitude, name: @eventm.name, owner_id: @eventm.owner_id, phone: @eventm.phone, start_time: @eventm.start_time } }, as: :json
    assert_response 200
  end

  test "should destroy eventm" do
    assert_difference('Eventm.count', -1) do
      delete eventm_url(@eventm), as: :json
    end

    assert_response 204
  end
end
