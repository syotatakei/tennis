require 'test_helper'

class TennisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenni = tennis(:one)
  end

  test "should get index" do
    get tennis_url
    assert_response :success
  end

  test "should get new" do
    get new_tenni_url
    assert_response :success
  end

  test "should create tenni" do
    assert_difference('Tenni.count') do
      post tennis_url, params: { tenni: { name: @tenni.name, point: @tenni.point, team: @tenni.team } }
    end

    assert_redirected_to tenni_url(Tenni.last)
  end

  test "should show tenni" do
    get tenni_url(@tenni)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenni_url(@tenni)
    assert_response :success
  end

  test "should update tenni" do
    patch tenni_url(@tenni), params: { tenni: { name: @tenni.name, point: @tenni.point, team: @tenni.team } }
    assert_redirected_to tenni_url(@tenni)
  end

  test "should destroy tenni" do
    assert_difference('Tenni.count', -1) do
      delete tenni_url(@tenni)
    end

    assert_redirected_to tennis_url
  end
end
