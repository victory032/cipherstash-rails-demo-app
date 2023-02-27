ActiveAdmin.register Patient do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :email, :dob, :weight, :allergies, :medications
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :dob, :weight, :allergies, :medications]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # Comment this out to see all columns.
  index do
    column :full_name
    column :email
    column :dob
    column :weight
    column :allergies
    column :medications
    actions
  end

  filter :full_name
  filter :email
  filter :dob
  filter :weight
  filter :allergies
  filter :medications

end
