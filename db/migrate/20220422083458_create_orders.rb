class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :status, default: "NEW"
      t.float :total_price
      t.datetime :date

      t.timestamps
    end
  end
end
