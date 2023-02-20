class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :full_name
      t.string :email
      t.date :dob
      t.float :weight
      t.string :allergies
      t.string :medications

      t.timestamps
    end
  end
end
