class Session < ActiveRecord::Base
  has_many :items, dependent: :destroy
  validates :name, presence: true, uniqueness: {cas_sensitive: false}
  validates :item_type, presence: true
end