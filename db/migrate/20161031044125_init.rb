class Init < ActiveRecord::Migration[5.0]
  def change

    create_table :members do |t|
      t.string :name, null: false
      t.integer :year, null: false
      t.text :introduce, null: false
      t.integer :depertment, null: false
      t.integer :undergraduate, null: false
      t.integer :position, null: false
    end

    create_table :schedules do |t|
      t.string :title, null: false
      t.integer :month
      t.integer :day
    end
  end
end
