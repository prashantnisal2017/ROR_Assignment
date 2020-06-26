json.extract! feedback, :id, :trail_id, :title, :observation, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
