json.array!(@yells) do |yell|
  json.extract! yell, :id, :user_name, :content
  json.url yell_url(yell, format: :json)
end
