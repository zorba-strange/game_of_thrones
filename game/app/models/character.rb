class Character < ApplicationRecord
  belongs_to :house
  validates :name, :presence=>{:message => ":Can\'t be Blank"}
end
