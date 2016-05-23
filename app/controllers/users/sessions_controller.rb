class Users::SessionsController < Devise::SessionsController

  skip_before_filter :verify_authenticity_token
 def create
       ##验证邮箱是否存在
   user = User.find_for_database_authentication(:email => params[:user][:email])
   #return render json: {error: {status:-1}} unless user   
   respond_to do |format|
     if user.valid_password?(params[:user][:password])
       sign_in("user", user)
       user.ensure_authentication_token
       format.html { 
         redirect_to documents_url, notice: 'Blog was successfully created.'
       }
       format.json { 
         render json: {token:user.authentication_token, user_id: user.id}
       }

     else
       format.html {
         redirect_to documents_url, notice: 'Blog was'
       }
       format.json {
         render json: {error: {status:-1}}
       }
     end
   end
 end
                                                                                                                   

 def destroy
   current_user.authentication_token = Devise.friendly_token
   sign_out(current_user)
   render json: {success: true}
 end

end
