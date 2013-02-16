# == Schema Information
#
# Table name: meals
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  description    :text
#  price          :decimal(, )
#  destination_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  order_id       :integer
#  image          :string(255)
#

class Meal < ActiveRecord::Base

  has_many :customers, :through => :orders
  belongs_to :order
  belongs_to :destination

  validates :name, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i,
                                                message: 'must be a URL for GIF,
                                                          JPG or PNG image.'
  }

end
