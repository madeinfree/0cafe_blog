class CreateEposts < ActiveRecord::Migration
  def change
    create_table :eposts do |t|
      t.string :title
      t.text :content
      t.string :tag

      t.timestamps
    end
  end
end
