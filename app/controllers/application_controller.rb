class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #rotect_from_forgery with: :exception
  protect_from_forgery with: :null_session

  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
	    headers['Access-Control-Allow-Origin'] = '*'
	      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
	        headers['Access-Control-Max-Age'] = "1728000"
  end

  def cors_preflight_check
	    if request.method == :options
		        headers['Access-Control-Allow-Origin'] = '*'
			    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
			        headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
				    headers['Access-Control-Max-Age'] = '1728000'
				        render :text => '', :content_type => 'text/plain'
					  end
  end
protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:account_update) << :username
  end
private
 
  # 获取http:/xxx.com/books.json?token=aMUj5kiyLbmZdjpr_iAu
  # 判断token的值是否存在，若存在且能在User表中找到相应的，就登录此用户
  def authenticate_user_from_token!
    token = params[:token].presence
    user = token && User.find_by_authentication_token(token.to_s)
    if user
      sign_in user, store: false
    end
  end

end
