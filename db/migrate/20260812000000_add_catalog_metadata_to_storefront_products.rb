class AddCatalogMetadataToStorefrontProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :storefront_products, :rarity, :string, null: false, default: ""
    add_column :storefront_products, :set_name, :string, null: false, default: ""
    add_column :storefront_products, :card_number, :string, null: false, default: ""
  end
end
