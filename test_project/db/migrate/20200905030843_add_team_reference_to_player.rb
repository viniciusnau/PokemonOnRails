class AddTeamReferenceToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :team, index: true, foreign_key: true
  end
end
