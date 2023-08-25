class AddPosterImageToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :poster_image, :string
  end
end
