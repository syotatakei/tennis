class CreateTennis < ActiveRecord::Migration[5.1]
  def change
    create_table :tennis do |t|
      t.string :name
      t.string :team
      t.integer :point

      t.timestamps
    end
  end
end
