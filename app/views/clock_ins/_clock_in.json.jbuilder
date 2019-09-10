json.extract! clock_in, :id, :teacher_id, :check_type, :created_at, :updated_at
json.url clock_in_url(clock_in, format: :json)
