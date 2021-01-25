class AddFeaturesToPropertyTable < ActiveRecord::Migration[6.0]
  def change

    add_column :properties, :prop_f_air_cond, :integer
    add_column :properties, :prop_f_barbeque, :integer
    add_column :properties, :prop_f_dryer, :integer
    add_column :properties, :prop_f_gym, :integer
    add_column :properties, :prop_f_laundry, :integer
    add_column :properties, :prop_f_lawn, :integer
    add_column :properties, :prop_f_microwave, :integer
    add_column :properties, :prop_f_outdoor_shower, :integer
    add_column :properties, :prop_f_refrigerator, :integer
    add_column :properties, :prop_f_sauna, :integer
    add_column :properties, :prop_f_swimming_pool, :integer
    add_column :properties, :prop_f_tv_cable, :integer
    add_column :properties, :prop_f_washer, :integer
    add_column :properties, :prop_f_wi_fi, :integer
    add_column :properties, :prop_f_window_cover, :integer
   

  end
end
