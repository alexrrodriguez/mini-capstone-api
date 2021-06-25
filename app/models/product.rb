class Product < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :itemcount, presence: true

  belongs_to :supplier
  
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price.to_i <= 10 
  end

  def tax
    tax = price.to_i * 0.09
    return tax
  end

  def total
    sum = price.to_i + tax
    return sum
  end


end
