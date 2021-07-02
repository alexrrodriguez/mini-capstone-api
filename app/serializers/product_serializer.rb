class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :description, :is_discounted?, :tax, :total, :itemcount

  belongs_to :supplier
  has_many :categories
end
