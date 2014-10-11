class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
    	t.integer :user_id
    	t.string :prescription_type
		t.integer :sph
		t.integer :cyl
		t.integer :axis
		t.integer :bc
		t.integer :diam

      t.timestamps
    end
  end
end
