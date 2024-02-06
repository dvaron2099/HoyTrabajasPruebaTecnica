class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :nit
      t.string :contact_person
      t.string :contact_number
      t.references :bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
