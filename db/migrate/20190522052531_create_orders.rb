class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :seller_name
      t.string :aasm_state

      t.timestamps
    end
  end
end
