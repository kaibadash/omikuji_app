class CreateOmikujiResults < ActiveRecord::Migration
  def change
    create_table :omikuji_results do |t|
      t.string :omikuji
      t.string :result

      t.timestamps null: false
    end
  end
end
