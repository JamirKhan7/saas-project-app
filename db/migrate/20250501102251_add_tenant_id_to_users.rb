class AddTenantIdToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :tenant_id, :integer
  end
end
