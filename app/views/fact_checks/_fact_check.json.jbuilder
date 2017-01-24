json.extract! fact_check, :id, :veracity, :comment, :verifiedByMod, :created_at, :updated_at
json.url fact_check_url(fact_check, format: :json)