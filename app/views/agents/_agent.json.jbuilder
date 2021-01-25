json.extract! agent, :id, :shortname, :fullname, :description, :address, :email, :website, :tel, :country_id, :balance, :account_id, :created_at, :updated_at
json.url agent_url(agent, format: :json)
