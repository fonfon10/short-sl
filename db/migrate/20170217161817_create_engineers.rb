class CreateEngineers < ActiveRecord::Migration[5.0]
  def change
    create_table :engineers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
