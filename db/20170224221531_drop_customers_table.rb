class DropCustomersTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :customers
  end


  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
