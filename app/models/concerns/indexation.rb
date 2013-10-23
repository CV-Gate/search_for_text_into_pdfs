module Indexation
  extend ActiveSupport::Concern
  require "rake"
  def extract_text
    filename = File.expand_path('../../../../public', __FILE__) + self.file_url.to_s
    to_content = ""
    PDF::Reader.open(filename) do |reader|
      reader.pages.each do |page|
         to_content += page.text
       end
    end
    self.content = to_content
  end
end