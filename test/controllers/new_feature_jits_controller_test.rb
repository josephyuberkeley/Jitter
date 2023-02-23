require "test_helper"

class NewFeatureJitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_feature_jit = new_feature_jits(:one)
  end

  test "should get index" do
    get new_feature_jits_url
    assert_response :success
  end

  test "should get new" do
    get new_new_feature_jit_url
    assert_response :success
  end

  test "should create new_feature_jit" do
    assert_difference("NewFeatureJit.count") do
      post new_feature_jits_url, params: { new_feature_jit: { content: @new_feature_jit.content, user_id: @new_feature_jit.user_id } }
    end

    assert_redirected_to new_feature_jit_url(NewFeatureJit.last)
  end

  test "should show new_feature_jit" do
    get new_feature_jit_url(@new_feature_jit)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_feature_jit_url(@new_feature_jit)
    assert_response :success
  end

  test "should update new_feature_jit" do
    patch new_feature_jit_url(@new_feature_jit), params: { new_feature_jit: { content: @new_feature_jit.content, user_id: @new_feature_jit.user_id } }
    assert_redirected_to new_feature_jit_url(@new_feature_jit)
  end

  test "should destroy new_feature_jit" do
    assert_difference("NewFeatureJit.count", -1) do
      delete new_feature_jit_url(@new_feature_jit)
    end

    assert_redirected_to new_feature_jits_url
  end
end
