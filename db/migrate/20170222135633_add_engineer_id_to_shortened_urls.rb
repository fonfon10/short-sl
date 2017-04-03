class AddEngineerIdToShortenedUrls < ActiveRecord::Migration[5.0]
  def change
    add_column :shortened_urls, :engineer_id, :integer
  end
end
