class CreateTechniques < ActiveRecord::Migration
  def change
    create_table :techniques do |t|
      t.string :name
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
