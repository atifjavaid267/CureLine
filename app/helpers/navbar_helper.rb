module NavbarHelper
  def menu_items
    menu = {}
    menu['Home'] = root_path
    if user_signed_in?
      menu['Diseases'] = root_path #diseases_path
      menu['Remedies'] = root_path #remedies_path if current_user.admin?
      menu['Health Concerns'] = root_path #health_concerns_path if current_user.member?
    end
    menu['About'] = about_index_path
    menu['Contact'] = contact_index_path
    menu
  end
end
