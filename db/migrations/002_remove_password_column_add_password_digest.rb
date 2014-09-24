Sequel.migration do

  change do
    alter_table(:users) do
      drop_column :password
      add_column  :password_digest, String, :size => 512
    end
  end

end
