class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :pid
      t.datetime :birth_date

      t.timestamps
    end
  end
end
