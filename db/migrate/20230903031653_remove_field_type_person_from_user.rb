class RemoveFieldTypePersonFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :type_person, :string
  end
end
