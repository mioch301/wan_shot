class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :caption
      t.boolean :is_delete, default: false

      t.timestamps
    end
  end
end
