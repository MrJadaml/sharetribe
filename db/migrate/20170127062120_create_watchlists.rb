class CreateWatchlists < ActiveRecord::Migration
  def self.up
    create_table :watchlists do |t|
      t.belongs_to :person
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :watchlists
  end
end
