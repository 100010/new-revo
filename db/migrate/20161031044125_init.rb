class Init < ActiveRecord::Migration[5.0]
  def change

    create_table :members do |t|
      t.string :profile_image, null: false
      t.string :name, null: false
      t.string :profile_image
      t.text :introduce, null: false
      t.integer :depertment, null: false
    end

    create_table :schedules do |t|
      t.string  :title, null: false
      t.integer :started_month, null: false
      t.integer :end_month, null: false
      t.integer :started_day, null: false
      t.integer :end_day, null: false

      t.timestamps null: false
    end

    create_table :records do |t|
      t.string :title, null: false
      t.string :subtitle, null: false
      t.text :description
      t.string :image
      t.timestamps null: false
    end


  end
end
