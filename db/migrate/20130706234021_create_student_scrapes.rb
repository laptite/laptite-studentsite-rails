class CreateStudentScrapes < ActiveRecord::Migration
  def change
    create_table :student_scrapes do |t|

      t.timestamps
    end
  end
end
