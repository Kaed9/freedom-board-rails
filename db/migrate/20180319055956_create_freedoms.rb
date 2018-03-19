class CreateFreedoms < ActiveRecord::Migration
  def change
    create_table :freedoms do |t|
      t.string :name
      t.string :message

      t.timestamps
    end
  end
end
