class House < ApplicationRecord
  has_many :characters
  validates :name, :presence =>{:message => ': Can\'t be Blank'}
end
