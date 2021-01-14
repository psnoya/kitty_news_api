class ArticlesShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :lead, :body, :created, :image

  def created
    object.created_at.strftime('%F')
  end

  def image 
    return nil unless object.image.attached?
    object.image_path
  end
end
