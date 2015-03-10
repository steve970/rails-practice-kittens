class Categorization < ActiveRecord::Base

  validates :category_id, presence: true

  validates_uniqueness_of :category, scope: :kitten

  belongs_to :kitten
  belongs_to :category

end
