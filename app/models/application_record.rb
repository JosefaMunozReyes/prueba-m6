class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def authorize_request(kind = nil)
    unless kind.include?(current_user.role)
      redirect_to pubications_path, notice: "Usted no esta autorizado para esta acción"
    end
  end
end
