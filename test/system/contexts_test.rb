require "application_system_test_case"

class ContextsTest < ApplicationSystemTestCase
  setup do
    @context = contexts(:one)
  end

  test "visiting the index" do
    visit contexts_url
    assert_selector "h1", text: "Contexts"
  end

  test "creating a Context" do
    visit contexts_url
    click_on "New Context"

    fill_in "Id from tc", with: @context.id_from_tc
    fill_in "Title", with: @context.title
    click_on "Create Context"

    assert_text "Context was successfully created"
    click_on "Back"
  end

  test "updating a Context" do
    visit contexts_url
    click_on "Edit", match: :first

    fill_in "Id from tc", with: @context.id_from_tc
    fill_in "Title", with: @context.title
    click_on "Update Context"

    assert_text "Context was successfully updated"
    click_on "Back"
  end

  test "destroying a Context" do
    visit contexts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Context was successfully destroyed"
  end
end
