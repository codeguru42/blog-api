class ArticlesController < JSONAPI::ResourceController
  def latest
    serializer = JSONAPI::ResourceSerializer.new(ArticleResource)
    serializer.serialize_to_hash(Article.latest)
  end
end
