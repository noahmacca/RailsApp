class CreateTesta < ActiveRecord::Migration
  def change
    create_table :testa do |t|
      t.string :t

      t.timestamps null: false
    end
  end
end
