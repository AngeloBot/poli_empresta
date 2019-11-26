json.extract! loan, :id, :borrower_id, :owner_id, :returned, :accepted, :start, :end, :tool_quantity, :tool_id, :created_at, :updated_at
json.url loan_url(loan, format: :json)
