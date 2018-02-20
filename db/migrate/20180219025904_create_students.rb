class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.references :grade, foreign_key: true
      t.references :person, foreign_key: true
      t.integer :gpa

      t.timestamps
    end
  end
end
