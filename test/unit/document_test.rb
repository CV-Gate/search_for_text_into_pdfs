# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  private    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  file       :string(255)
#

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
