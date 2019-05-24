class ChangeColumnUrlToPhotoOnCocktails < ActiveRecord::Migration[5.2]
  def change
    rename_column :cocktails, :url, :photo
  end
end
