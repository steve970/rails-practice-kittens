class Categorization < ActiveRecord::Base

  validates :category_id, presence: true, uniqueness: true

  belongs_to :kitten
  belongs_to :category

end
