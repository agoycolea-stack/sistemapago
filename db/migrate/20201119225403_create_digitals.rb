class CreateDigitals < ActiveRecord::Migration[5.2]
  def change
    create_table :digitals do |t|
      t.string :name
      t.integer :stock

      t.timestamps
    end
  end
end
