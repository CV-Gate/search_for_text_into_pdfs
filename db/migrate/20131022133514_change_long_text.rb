class ChangeLongText < ActiveRecord::Migration
  def change
  	change_column :documents, :content, :text, :limit => 4294967295
  end
end
