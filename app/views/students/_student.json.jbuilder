json.extract! student, :id, :admin, :name, :email, :password, :photo, :created_at, :updated_at
json.url student_url(student, format: :json)
