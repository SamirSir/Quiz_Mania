json.extract! result, :id, :score, :user_id, :subject_id, :created_at, :updated_at
json.url result_url(result, format: :json)
