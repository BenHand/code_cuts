class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :video_url
      t.text :description
      t.text :snippets
      t.string :github_link
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
