require "application_system_test_case"

class NewFeatureJitsTest < ApplicationSystemTestCase
  setup do
    @new_feature_jit = new_feature_jits(:one)
  end

  test "visiting the index" do
    visit new_feature_jits_url
    assert_selector "h1", text: "New feature jits"
  end

  test "should create new feature jit" do
    visit new_feature_jits_url
    click_on "New new feature jit"

    fill_in "Content", with: @new_feature_jit.content
    fill_in "User", with: @new_feature_jit.user_id
    click_on "Create New feature jit"

    assert_text "New feature jit was successfully created"
    click_on "Back"
  end

  test "should update New feature jit" do
    visit new_feature_jit_url(@new_feature_jit)
    click_on "Edit this new feature jit", match: :first

    fill_in "Content", with: @new_feature_jit.content
    fill_in "User", with: @new_feature_jit.user_id
    click_on "Update New feature jit"

    assert_text "New feature jit was successfully updated"
    click_on "Back"
  end

  test "should destroy New feature jit" do
    visit new_feature_jit_url(@new_feature_jit)
    click_on "Destroy this new feature jit", match: :first

    assert_text "New feature jit was successfully destroyed"
  end
end
