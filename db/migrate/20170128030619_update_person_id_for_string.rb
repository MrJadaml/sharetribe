class UpdatePersonIdForString < ActiveRecord::Migration
  def change
    remove_column :watchlists, :person_id
  end
end
