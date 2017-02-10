ActiveAdmin.register Book do
  menu parent: "Bookshop"
  permit_params :name, :state
end
