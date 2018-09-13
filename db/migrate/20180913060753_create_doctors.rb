class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :hospital_name, null: false
      t.string :email
      t.string :tel
      t.string :fax
      t.string :comment
      t.integer :english_speakable, default: 0
      t.integer :possibility, default: 0
      t.boolean :has_ever_involved
      t.timestamps
    end
  end
end
