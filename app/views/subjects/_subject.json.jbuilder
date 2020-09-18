json.extract! subject, :id, :name, :content, :created_at, :updated_at
json.url subject_url(subject, format: :json)
