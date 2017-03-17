ActiveAdmin.register Book do
  menu parent: "Bookshop"
  permit_params :name, :state

  sidebar "User Details", only: :show do
    attributes_table_for book.user do
      row :email
    end
  end
end
