json.array!(@super_secret_informations) do |super_secret_information|
  json.extract! super_secret_information, :id, :bank_details, :embarrassing_facts
  json.url super_secret_information_url(super_secret_information, format: :json)
end
