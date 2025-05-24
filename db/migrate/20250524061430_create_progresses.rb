class CreateProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :progresses do |t|
      t.references :content, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :progress
      t.boolean :completed

      t.timestamps
    end
  end
end
