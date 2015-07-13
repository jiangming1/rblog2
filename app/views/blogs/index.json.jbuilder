json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :body, :tag
  json.url blog_url(blog, format: :json)
end
