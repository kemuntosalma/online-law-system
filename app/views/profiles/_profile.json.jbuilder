json.extract! profile, :id, :first_name, :second_name, :phone_numbe, :email_address, :lawyer, :complaint, :created_at, :updated_at
json.url profile_url(profile, format: :json)
