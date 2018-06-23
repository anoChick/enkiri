Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id
      column :uid , String , null: false
      column :name , String , null: false
      column :access_token , String , null: false
      column :access_token_secret , String , null: false
      column :image_url , String , null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
