# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  payment     :string(255)
#  meal_id     :integer
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Order <ActiveRecord::Base

  has_many :meals
  belongs_to :customer
end
