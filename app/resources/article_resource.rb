class ArticleResource < JSONAPI::Resource
  attribute :title
  attribute :body
  attribute :created_at
  attribute :updated_at

  has_many :comments
end
