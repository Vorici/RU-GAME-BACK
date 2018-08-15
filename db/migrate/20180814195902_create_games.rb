class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :created_by_username
      t.string :name
      t.string :address
      t.string :sport
      t.string :date
      t.string :time
      t.string :comments
      t.integer :max_players
      

      t.timestamps
    end
  end
end
