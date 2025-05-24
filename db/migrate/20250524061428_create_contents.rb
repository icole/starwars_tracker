class CreateContents < ActiveRecord::Migration[8.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.references :content_type, null: false, foreign_key: true
      t.date :release_date
      t.integer :canonical_order

      t.timestamps
    end
  end
end
