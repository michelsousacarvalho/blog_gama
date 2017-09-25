class AddIpToSubscribers < ActiveRecord::Migration[5.1]
  def change
    add_column :subscribers, :ip, :string
  end
end
