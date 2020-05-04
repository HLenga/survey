json.extract! surveylist, :id, :name, :laptop, :os, :created_at, :updated_at
json.url surveylist_url(surveylist, format: :json)
