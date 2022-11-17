class CreateEducators < ActiveRecord::Migration[7.0]
  def change
    create_table :educators do |t|
      t.string :degree, null: false, index: true
      t.string :course_name, null: false, index: true
      t.string :subject, null: false, index: true
      t.string :campus, null: false, index: true

      t.timestamps
    end
  end
end
