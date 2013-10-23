class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :content
      t.boolean :private

      t.timestamps
    end
  end
end
