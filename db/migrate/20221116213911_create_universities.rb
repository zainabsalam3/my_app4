class CreateUniversities < ActiveRecord::Migration[7.0]
  def change
    create_table universities do |t|
      t.integer :educator_id
      t.string :name, null: false, index: true
      t.string :phone , null: false, index: true
      t.string :Address, null: false, index: true
      t.string :prefix, null: false, index: true
      t.string :suffix, null: false, index: true

      t.timestamps
    end
  end
end
