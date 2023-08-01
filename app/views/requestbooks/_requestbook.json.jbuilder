json.extract! requestbook, :id, :isbn, :title, :author, :requestedby, :email, :status, :created_at, :updated_at, :approvedate, :returndate, :fine
json.url requestbook_url(requestbook, format: :json)
