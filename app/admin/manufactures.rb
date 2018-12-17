ActiveAdmin.register Manufacture do
  permit_params :id, :name, :tire_maker_id, :image

  form do |t|
  t.inputs do
    t.input :name
    t.input :tire_maker_id, as: :select, collection: {'ブリジストン' => 1, 'ダンロップ' => 2, 'YOKOHAMA' => 3}
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
