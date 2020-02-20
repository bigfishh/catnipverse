class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :location_id
      t.text :content

      t.timestamps
    end
  end
end
