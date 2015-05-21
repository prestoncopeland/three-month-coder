json.array!(@coders) do |coder|
  json.extract! coder, :id, :username, :email, :password, :password_confirmation
  json.url coder_url(coder, format: :json)
end
