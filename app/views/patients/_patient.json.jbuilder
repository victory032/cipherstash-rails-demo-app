json.extract! patient, :id, :full_name, :dob, :email, :weight, :allergies, :medications, :created_at, :updated_at
json.url patient_url(patient, format: :json)
