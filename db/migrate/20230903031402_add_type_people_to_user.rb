class AddTypePeopleToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :type_people, null: false, foreign_key: true
  end
end
