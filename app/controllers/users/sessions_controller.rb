class Users::SessionsController < Devise::SessionsController
  def new
    super
  end
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:alert, :invalid)
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end
end
