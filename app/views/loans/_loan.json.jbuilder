json.extract! loan, :id, :borrower_id, :owner_id, :start, :end, :accepted, :returned, :tool_quality, :created_at, :updated_at
json.url loan_url(loan, format: :json)
