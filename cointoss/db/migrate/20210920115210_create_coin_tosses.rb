class CreateCoinTosses < ActiveRecord::Migration[6.1]
  def change
    create_table :coin_tosses do |t|
      t.string :heads
      t.string :tails
      t.string :result
      t.boolean :is_coin_tossed

      t.timestamps
    end
  end
end
