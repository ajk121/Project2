class AddCounterCacheToImpressions < ActiveRecord::Migration
  def change
    add_column :impressions, :counter_cache, :boolean
  end
end
