# == Schema Information
#
# Table name: manners
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string           not null
#  description :text             not null
#  star        :integer          default(0), not null
#  pv          :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MannerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
