module NavbarHelper
  def menu_items
    menu = {}

    if user_signed_in?
      menu['Home'] = root_path
      menu['Diseases'] = diseases_path
      menu['Remedies'] = remedies_path if current_user.admin?
      menu['Health Concerns'] = healthconcerns_path if current_user.member?
    end

    menu
  end
end
