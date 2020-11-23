class Item < ApplicationRecord
  validates :productname, presence: true, length: { maximum: 30 }
end
