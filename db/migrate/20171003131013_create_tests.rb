class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :Origin
      t.string :Destination

      t.timestamps
    end
  end
end
