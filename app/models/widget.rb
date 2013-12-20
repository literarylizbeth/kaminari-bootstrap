class Widget < ActiveRecord::Base

  validates :name, :colour, presence: true

  paginates_per 5

end
