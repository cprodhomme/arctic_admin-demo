ActiveAdmin.register Order do
  menu parent: "Bookshop"
  permit_params :book, :reference, :amount, :state, :customer_name, :customer_address

  scope :all, :default => true
  scope :in_progress
  scope :complete

  index do
    selectable_column
    id_column
    column :reference
    column :amount
    column :state do |order|
      status_tag(order.state) if order.state.present?
    end
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :book
      row :reference
      row :amount
      row :state do |order|
        status_tag(order.state)
      end
      row :customer_name
      row :customer_address
    end
    active_admin_comments
  end

  sidebar "Details", only: :show do
    attributes_table_for order.book do
      row :name
      row :state
    end
  end
end
