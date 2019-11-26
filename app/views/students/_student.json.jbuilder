json.extract! student, :id, :admin, :name, :email, :password_digest, :photo, :team_id, :created_at, :updated_at
json.url student_url(student, format: :json)
