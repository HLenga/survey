require 'test_helper'

class SurveylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surveylist = surveylists(:one)
  end

  test "should get index" do
    get surveylists_url
    assert_response :success
  end

  test "should get new" do
    get new_surveylist_url
    assert_response :success
  end

  test "should create surveylist" do
    assert_difference('Surveylist.count') do
      post surveylists_url, params: { surveylist: { laptop: @surveylist.laptop, name: @surveylist.name, os: @surveylist.os } }
    end

    assert_redirected_to surveylist_url(Surveylist.last)
  end

  test "should show surveylist" do
    get surveylist_url(@surveylist)
    assert_response :success
  end

  test "should get edit" do
    get edit_surveylist_url(@surveylist)
    assert_response :success
  end

  test "should update surveylist" do
    patch surveylist_url(@surveylist), params: { surveylist: { laptop: @surveylist.laptop, name: @surveylist.name, os: @surveylist.os } }
    assert_redirected_to surveylist_url(@surveylist)
  end

  test "should destroy surveylist" do
    assert_difference('Surveylist.count', -1) do
      delete surveylist_url(@surveylist)
    end

    assert_redirected_to surveylists_url
  end
end
