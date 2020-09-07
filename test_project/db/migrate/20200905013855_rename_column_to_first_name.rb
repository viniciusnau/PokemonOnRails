class RenameColumnToFirstName < ActiveRecord::Migration[6.0]
  def change
    rename_column :players, :name, :first_name
  end
end
