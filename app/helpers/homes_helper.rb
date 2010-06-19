module HomesHelper
  def recent_articles
    Article.recent(10)
  end
end
