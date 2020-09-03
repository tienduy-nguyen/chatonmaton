ActiveAdmin.register Item do

  permit_params :title, :description, :price,:image_url

  
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :price
    column :image_url
    actions
  end

  filter :title
  filter :price


  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Item Details" do
      f.input :title
      f.input :description
      f.input :price
      f.input :image_url, as: :file
   end
   f.actions
  end

  # form do |f|
  #   f.inputs "Event Details" do
  #     f.input :title
  #     f.input :description
  #     f.input :price
  #     f.input :image_url
  #     # more fields
  #   end
  #   f.actions
  # end

end
