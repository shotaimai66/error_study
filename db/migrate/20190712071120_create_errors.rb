class CreateErrors < ActiveRecord::Migration[5.1]
  def change
    create_table :errors do |t|
      t.string :title

      t.timestamps
    end
  end
end
