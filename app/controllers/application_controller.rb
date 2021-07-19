class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller? #新規登録の情報をカラムに登録する

   # ログイン後に遷移するpathを設定
   def after_sign_in_path_for(resource)
    root_path
  end
 
  # ログアウト後に遷移するpathを設定
  def after_sign_out_path_for(resource)
    root_path
  end

private
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :name, :profile, :occupation, :position ]) #新規登録の情報をカラムに登録する
end



end
