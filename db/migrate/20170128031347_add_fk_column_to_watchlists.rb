class AddFkColumnToWatchlists < ActiveRecord::Migration
  def change
    add_column :watchlists, :person_id, :string
  end
end
