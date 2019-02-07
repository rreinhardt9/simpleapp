class CreateSimpleWidgets < ActiveRecord::Migration[5.2]
  def change
    create_table :simple_widgets do |t|
      t.string :name
      t.string :count
      t.string :comments

      t.timestamps
    end
  end
end
