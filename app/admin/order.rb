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

    tabs do
      tab :active do
        table_for 'Lorem Ipsum' do
          span 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse consectetur metus ligula, a suscipit orci congue non. Nulla facilisi. Curabitur tempor, massa ac rhoncus congue, leo sem placerat magna, at dapibus odio erat sit amet ex. Quisque placerat sit amet ex quis viverra. Morbi in suscipit turpis. Sed magna erat, mollis ac placerat et, mollis venenatis lectus. Morbi rutrum aliquam accumsan. Donec quis mi non ipsum suscipit condimentum a sit amet lectus.'
        end
      end

      tab :inactive do
        table_for 'more infos' do
          span 'Vestibulum dictum non magna vitae sagittis. Etiam purus orci, facilisis ut diam id, consectetur tincidunt ligula. Nullam sagittis, libero et maximus hendrerit, nisl tortor condimentum ex, at imperdiet sem lectus id turpis. Mauris eu erat quis erat sollicitudin blandit a nec arcu. Vestibulum eget consectetur mi, et sagittis massa. In non elementum nunc, ut maximus leo. Vestibulum ut elementum nibh. Nam facilisis libero in turpis ultricies faucibus. Praesent vel viverra lorem. Donec elementum tincidunt metus nec convallis. Nullam pharetra viverra dolor sit amet porttitor.'
        end
      end
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
