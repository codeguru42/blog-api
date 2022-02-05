class CommentResource < JSONAPI::Resource
  attribute :commenter
  attribute :body

  has_one :article
end
