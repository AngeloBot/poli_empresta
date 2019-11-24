json.extract! loan, :id, :owner_id, :borrower_id, :start, :end, :returned, :accepted, :tool_quantity, :created_at, :updated_at
json.url loan_url(loan, format: :json)
