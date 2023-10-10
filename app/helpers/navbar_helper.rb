module NavbarHelper
  def menu_items
    menu = {}
    menu['Home'] = root_path
    if user_signed_in?
      menu['Diseases'] = diseases_path
      menu['Remedies'] = remedies_path if current_user.admin?
      menu['Health Concerns'] = health_concerns_path if current_user.member?
    end
    menu['About'] = root_path
    menu['Contact'] = root_path
    menu
  end
end
