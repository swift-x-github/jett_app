json.extract! contactmessage, :id, :first_name, :last_name, :email, :subject, :message, :status, :created_at, :updated_at
json.url contactmessage_url(contactmessage, format: :json)
