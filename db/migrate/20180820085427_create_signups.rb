class CreateSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.string :email
      t.string :firstname
      t.timestamps
    end
  end
end
