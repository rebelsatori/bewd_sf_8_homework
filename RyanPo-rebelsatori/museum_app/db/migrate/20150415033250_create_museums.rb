class CreateMuseums < ActiveRecord::Migration
  def change
    create_table :museums do |t|
      t.string :Users
      t.string :Artists
      t.string :Paintings

      t.timestamps null: false
    end
  end
end
