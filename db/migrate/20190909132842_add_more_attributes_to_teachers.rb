class AddMoreAttributesToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :phone_number, :string
  end
end
