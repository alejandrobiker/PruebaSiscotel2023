class AddNotNullToModelUser < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :type_person, false
    change_column_null :users, :identification, false
    change_column_null :users, :issuance_date, false
    change_column_null :users, :expiration_date, false
    change_column_null :users, :name, false
    change_column_null :users, :email, false
    change_column_null :users, :main_phone, false
  end
end
