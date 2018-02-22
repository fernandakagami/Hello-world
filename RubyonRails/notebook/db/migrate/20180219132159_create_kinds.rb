class CreateKinds < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds do |t|
      t.string :description

      t.timestamps num: false
    end
  end
end
