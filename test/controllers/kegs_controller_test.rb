# frozen_string_literal: true

require "test_helper"

class KegsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keg = kegs(:one)
  end

  test "should get index" do
    get kegs_url, as: :json

    assert_response :success
  end

  test "should create keg" do
    assert_difference("Keg.count") do
      post kegs_url,
           params: { keg: { beer_id: @keg.beer_id, capacity_ml: @keg.capacity_ml, consumed_ml: @keg.consumed_ml } }, as: :json
    end

    assert_response :created
  end

  test "should show keg" do
    get keg_url(@keg), as: :json

    assert_response :success
  end

  test "should update keg" do
    patch keg_url(@keg),
          params: { keg: { beer_id: @keg.beer_id, capacity_ml: @keg.capacity_ml, consumed_ml: @keg.consumed_ml } }, as: :json

    assert_response :success
  end

  test "should destroy keg" do
    assert_difference("Keg.count", -1) do
      delete keg_url(@keg), as: :json
    end

    assert_response :no_content
  end
end
