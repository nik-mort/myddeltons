json.extract! member, :id, :first_name, :last_name, :address, :contact_number, :emergency_contact, :created_at, :updated_at
json.url member_url(member, format: :json)
