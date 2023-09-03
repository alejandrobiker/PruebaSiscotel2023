class CreateTypePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :type_people do |t|
      t.string :name

      t.timestamps
    end
  end
end
