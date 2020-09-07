class AddColumnLastNameToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :last_name, :string
  end
end
