class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.date :date
      t.integer :topic_id

      t.timestamps
    end
  end
end
