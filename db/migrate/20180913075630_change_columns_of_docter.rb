class ChangeColumnsOfDocter < ActiveRecord::Migration[5.1]
  def change
    change_column :doctors, :english_speakable, :integer, null: false, default: 0
    change_column :doctors, :possibility, :integer, null: false, default: 0
    change_column :doctors, :has_ever_involved, :boolean, null: false, default: false
  end
end
