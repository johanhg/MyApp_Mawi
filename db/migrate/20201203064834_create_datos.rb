class CreateDatos < ActiveRecord::Migration[5.2]
  def change
    create_table :datos do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.decimal :totalIngress, default: 0.0, null: false
      t.string :sector, null: false
      t.integer :workYears, null: false
      t.integer :amount, null: false
      t.string :frecuency, default: 'Mensual', null: false
      t.integer :payTime

      t.timestamps
    end
  end
end
