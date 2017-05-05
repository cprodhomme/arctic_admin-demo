ActiveAdmin.register Book do
  menu parent: "Bookshop"
  permit_params :name, :state, :user

  form do |f|
    f.inputs do
      f.input :user
      f.input :name
      f.input :state
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :state
    end

    orders = Order.where(book: book)
    panel :orders do
      paginated_collection(orders.page(params[:page]).per(15)) do
        table_for(collection, sortable: false) do
          column :reference
          column :state
          column :created_at       
        end
      end
    end
  end

  sidebar "User Details", only: :show do
    attributes_table_for book.user do
      row :id
      row :email
    end
  end
end
