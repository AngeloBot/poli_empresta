json.extract! student, :id, :given_name, :family_name, :cpf, :date_of_birth, :created_at, :updated_at
json.url student_url(student, format: :json)
