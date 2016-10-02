require 'test_helper'

class BlivotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blivot = blivots(:one)
  end

  test "should get index" do
    get blivots_url
    assert_response :success
  end

  test "should get new" do
    get new_blivot_url
    assert_response :success
  end

  test "should create blivot" do
    assert_difference('Blivot.count') do
      post blivots_url, params: { blivot: { description: @blivot.description, name: @blivot.name, priority: @blivot.priority } }
    end

    assert_redirected_to blivot_url(Blivot.last)
  end

  test "should show blivot" do
    get blivot_url(@blivot)
    assert_response :success
  end

  test "should get edit" do
    get edit_blivot_url(@blivot)
    assert_response :success
  end

  test "should update blivot" do
    patch blivot_url(@blivot), params: { blivot: { description: @blivot.description, name: @blivot.name, priority: @blivot.priority } }
    assert_redirected_to blivot_url(@blivot)
  end

  test "should destroy blivot" do
    assert_difference('Blivot.count', -1) do
      delete blivot_url(@blivot)
    end

    assert_redirected_to blivots_url
  end
end
