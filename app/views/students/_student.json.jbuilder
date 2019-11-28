json.extract! student, :id, :given_name, :family_name, :email, :keyword, :team_id, :created_at, :updated_at
json.url student_url(student, format: :json)
