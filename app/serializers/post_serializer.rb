class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    self.object.content.slice(0, 40) + "..."
  end
end
