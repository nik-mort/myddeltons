require 'test_helper'

class GunLisencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gun_lisence = gun_lisences(:one)
  end

  test "should get index" do
    get gun_lisences_url
    assert_response :success
  end

  test "should get new" do
    get new_gun_lisence_url
    assert_response :success
  end

  test "should create gun_lisence" do
    assert_difference('GunLisence.count') do
      post gun_lisences_url, params: { gun_lisence: { expiry_date: @gun_lisence.expiry_date, member_id: @gun_lisence.member_id, number: @gun_lisence.number, type: @gun_lisence.type } }
    end

    assert_redirected_to gun_lisence_url(GunLisence.last)
  end

  test "should show gun_lisence" do
    get gun_lisence_url(@gun_lisence)
    assert_response :success
  end

  test "should get edit" do
    get edit_gun_lisence_url(@gun_lisence)
    assert_response :success
  end

  test "should update gun_lisence" do
    patch gun_lisence_url(@gun_lisence), params: { gun_lisence: { expiry_date: @gun_lisence.expiry_date, member_id: @gun_lisence.member_id, number: @gun_lisence.number, type: @gun_lisence.type } }
    assert_redirected_to gun_lisence_url(@gun_lisence)
  end

  test "should destroy gun_lisence" do
    assert_difference('GunLisence.count', -1) do
      delete gun_lisence_url(@gun_lisence)
    end

    assert_redirected_to gun_lisences_url
  end
end
