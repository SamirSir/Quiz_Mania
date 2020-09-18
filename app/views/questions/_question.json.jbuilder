json.extract! question, :id, :phrase, :options, :answer, :subject_id, :created_at, :updated_at
json.url question_url(question, format: :json)
