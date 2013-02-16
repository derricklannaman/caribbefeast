# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  cart_id    :integer
#  meal_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LineItem < ActiveRecord::Base

end
