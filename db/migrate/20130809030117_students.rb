class Students < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :tagline
      t.string :excerpt
      t.string :linkedin
      t.string :github
      t.string :quote
      t.string :bio

      t.timestamps
    end
  end

end
