class AddNullFalseToTypePeopleField < ActiveRecord::Migration[7.0]
  def change
    change_column_null :type_people, :name, false
  end
end
