ActiveAdmin.register Manufacture do
  permit_params :id, :name, :tire_maker, :image

  form do |t|
  t.inputs do
    t.input :name
    t.input :tire_maker, as: :select, collection: ['ブリジストン', 'ダンロップ', 'YOKOHAMA']
    t.input :image, :as => :file
  end
  t.actions
end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
