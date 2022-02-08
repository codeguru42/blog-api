class ArticlesController < JSONAPI::ResourceController
  def latest
    serializer = JSONAPI::ResourceSerializer.new(ArticleResource)
    render json: serializer.serialize_to_hash(ArticleResource.new(Article.latest, {}))
  end
end
