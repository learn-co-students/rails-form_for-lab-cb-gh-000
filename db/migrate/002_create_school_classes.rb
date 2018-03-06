class CreateSchoolClasses < ActiveRecord::Migration

  def up
    create_table :school_classes do |t|
      t.string :title
      t.integer :room_number
    end
  end

end
