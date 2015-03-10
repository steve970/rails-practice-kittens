class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {case_sensitive: false}

  has_many :kittens, :through => :categorizations
  has_many :categorizations

end
