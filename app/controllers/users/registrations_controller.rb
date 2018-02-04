class Users::RegistrationsController < Devise::RegistrationsController
  layout "application", only: [:edit, :update]

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def after_update_path_for(resource)
    edit_user_registration_path
  end
end
