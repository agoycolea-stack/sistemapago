json.extract! payment_method, :id, :name, :order_id, :created_at, :updated_at
json.url payment_method_url(payment_method, format: :json)
