
Sequel.migration do

  change do
    create_table(:users) do
      primary_key :id
      String  :email,    :size => 64, :null => false
      String  :name,     :size => 64, :null => false
      String  :gender,   :size => 64
      String  :picture,  :size => 128
      Integer :dob,      :null => false
      String  :phone,    :size => 64
      String  :location, :size => 256
      String  :password, :size => 64, :null => false
    end
  end

end
