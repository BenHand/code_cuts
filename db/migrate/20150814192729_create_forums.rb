class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :topic, null: false, default: "< Insert Topic Here />"
      t.integer :post_count, null: false, default: 0
      t.integer :comment_count, null: false, default: 0
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
