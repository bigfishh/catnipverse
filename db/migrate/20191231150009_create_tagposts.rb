class CreateTagposts < ActiveRecord::Migration[6.0]
  def change
    create_table :tagposts do |t|
      t.belongs_to :tag, null: false, foreign_key: true
      t.integer :post_id

      t.timestamps
    end
  end
end
