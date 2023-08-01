require "test_helper"

class RequestbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requestbook = requestbooks(:one)
  end

  test "should get index" do
    get requestbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_requestbook_url
    assert_response :success
  end

  test "should create requestbook" do
    assert_difference("Requestbook.count") do
      post requestbooks_url, params: { requestbook: { author: @requestbook.author, email: @requestbook.email, isbn: @requestbook.isbn, requestedby: @requestbook.requestedby, status: @requestbook.status, title: @requestbook.title } }
    end

    assert_redirected_to requestbook_url(Requestbook.last)
  end

  test "should show requestbook" do
    get requestbook_url(@requestbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_requestbook_url(@requestbook)
    assert_response :success
  end

  test "should update requestbook" do
    patch requestbook_url(@requestbook), params: { requestbook: { author: @requestbook.author, email: @requestbook.email, isbn: @requestbook.isbn, requestedby: @requestbook.requestedby, status: @requestbook.status, title: @requestbook.title } }
    assert_redirected_to requestbook_url(@requestbook)
  end

  test "should destroy requestbook" do
    assert_difference("Requestbook.count", -1) do
      delete requestbook_url(@requestbook)
    end

    assert_redirected_to requestbooks_url
  end
end
