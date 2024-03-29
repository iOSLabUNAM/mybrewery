# frozen_string_literal: true

require "test_helper"

class BeersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beer = beers(:one)
  end

  test "should get index" do
    get beers_url, as: :json

    assert_response :success
  end

  test "should create beer" do
    assert_difference("Beer.count") do
      post beers_url, params: { beer: { abu: @beer.abu, ibu: @beer.ibu, name: @beer.name, type: @beer.type } },
                      as: :json
    end

    assert_response :created
  end

  test "should show beer" do
    get beer_url(@beer), as: :json

    assert_response :success
  end

  test "should update beer" do
    patch beer_url(@beer), params: { beer: { abu: @beer.abu, ibu: @beer.ibu, name: @beer.name, type: @beer.type } },
                           as: :json

    assert_response :success
  end

  test "should destroy beer" do
    assert_difference("Beer.count", -1) do
      delete beer_url(@beer), as: :json
    end

    assert_response :no_content
  end
end
