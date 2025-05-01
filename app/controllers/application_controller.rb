class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_tenant
  allow_browser versions: :modern

  private

  def set_tenant
    tenant = Tenant.find_by(subdomain: request.subdomain)
    session[:current_tenant_id] = tenant.id if tenant.present?
  end

  def current_tenant
    Tenant.find(session[:current_tenant_id])
  end
end
