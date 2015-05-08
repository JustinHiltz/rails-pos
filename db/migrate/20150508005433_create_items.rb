class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :sku 
    	t.string :name
    	t.string :description, :limit => 50
    	t.text :verbose_description
    	t.decimal :price, :precision => 8, :scale => 2
    	t.string :image_url
    	t.integer :stock_amount
      t.string :status
      t.string :vendor
      t.decimal :cost_price, :precision => 8, :scale => 2
      t.decimal :price_override, :precision => 8, :scale => 2
      t.timestamps null: false
    end
  end
end
