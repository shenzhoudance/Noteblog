class AddImageToDesignWork < ActiveRecord::Migration[5.0]
  def change
    add_column :design_works, :image, :string
  end
end
