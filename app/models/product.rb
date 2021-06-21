class Product < ApplicationRecord

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
