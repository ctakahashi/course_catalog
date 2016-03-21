json.array!(@searches) do |search|
  json.extract! search, :id, :course, :subject
  json.url search_url(search, format: :json)
end
