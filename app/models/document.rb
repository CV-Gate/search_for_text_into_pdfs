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

class Document < ActiveRecord::Base
  attr_accessible :content, :private, :title, :file
  mount_uploader :file, DocumentFileUploader
  include Indexation
  before_save :extract_text
end
