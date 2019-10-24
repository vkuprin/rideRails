class AddPositionToTeamMember < ActiveRecord::Migration[6.0]
  def change
      add_column :teams, :position, :string
  end
end
