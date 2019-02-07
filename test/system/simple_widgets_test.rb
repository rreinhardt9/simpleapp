require "application_system_test_case"

class SimpleWidgetsTest < ApplicationSystemTestCase
  setup do
    @simple_widget = simple_widgets(:one)
  end

  test "visiting the index" do
    visit simple_widgets_url
    assert_selector "h1", text: "Simple Widgets"
  end

  test "creating a Simple widget" do
    visit simple_widgets_url
    click_on "New Simple Widget"

    fill_in "Comments", with: @simple_widget.comments
    fill_in "Count", with: @simple_widget.count
    fill_in "Name", with: @simple_widget.name
    click_on "Create Simple widget"

    assert_text "Simple widget was successfully created"
    click_on "Back"
  end

  test "updating a Simple widget" do
    visit simple_widgets_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @simple_widget.comments
    fill_in "Count", with: @simple_widget.count
    fill_in "Name", with: @simple_widget.name
    click_on "Update Simple widget"

    assert_text "Simple widget was successfully updated"
    click_on "Back"
  end

  test "destroying a Simple widget" do
    visit simple_widgets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simple widget was successfully destroyed"
  end
end
