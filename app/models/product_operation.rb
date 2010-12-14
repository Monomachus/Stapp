class ProductOperation < ActiveRecord::Base
  validates :user_id, :product_id, :operation_type_id, :product_number,
    :operation_date, :presence => true
end
