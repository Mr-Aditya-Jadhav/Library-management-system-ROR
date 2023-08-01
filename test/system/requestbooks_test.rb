require "application_system_test_case"

class RequestbooksTest < ApplicationSystemTestCase
  setup do
    @requestbook = requestbooks(:one)
  end

  test "visiting the index" do
    visit requestbooks_url
    assert_selector "h1", text: "Requestbooks"
  end

  test "should create requestbook" do
    visit requestbooks_url
    click_on "New requestbook"

    fill_in "Author", with: @requestbook.author
    fill_in "Email", with: @requestbook.email
    fill_in "Isbn", with: @requestbook.isbn
    fill_in "Requestedby", with: @requestbook.requestedby
    fill_in "Status", with: @requestbook.status
    fill_in "Title", with: @requestbook.title
    click_on "Create Requestbook"

    assert_text "Requestbook was successfully created"
    click_on "Back"
  end

  test "should update Requestbook" do
    visit requestbook_url(@requestbook)
    click_on "Edit this requestbook", match: :first

    fill_in "Author", with: @requestbook.author
    fill_in "Email", with: @requestbook.email
    fill_in "Isbn", with: @requestbook.isbn
    fill_in "Requestedby", with: @requestbook.requestedby
    fill_in "Status", with: @requestbook.status
    fill_in "Title", with: @requestbook.title
    click_on "Update Requestbook"

    assert_text "Requestbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Requestbook" do
    visit requestbook_url(@requestbook)
    click_on "Destroy this requestbook", match: :first

    assert_text "Requestbook was successfully destroyed"
  end
end
