class CreateBuns < ActiveRecord::Migration
  def change
    create_table :buns do |t|
    	t.text        :text
      t.timestamps
    end
  end
end
