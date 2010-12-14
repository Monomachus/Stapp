class OperationType < ActiveRecord::Base
  validates :name, :presence => true
end
