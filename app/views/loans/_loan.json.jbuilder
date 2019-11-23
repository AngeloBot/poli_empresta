json.extract! loan, :id, :id_borrower, :id_owner, :returned, :accepted, :start, :end, :created_at, :updated_at
json.url loan_url(loan, format: :json)
