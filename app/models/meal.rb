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
#

class Meal <ActiveRecord::Base

  has_many :customers, :through => :orders
  belongs_to :order
  belongs_to :destination
end
