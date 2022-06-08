class AddPriceToGnomes < ActiveRecord::Migration[6.1]
  def change
    add_column :gnomes, :price, :integer
  end
end
