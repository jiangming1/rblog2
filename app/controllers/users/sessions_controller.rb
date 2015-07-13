class Users::SessionsController < Devise::SessionsController
 def create
       ##验证邮箱是否存在
   user = User.find_for_database_authentication(:email => params[:user][:email])
   return render json: {error: {status:-1}} unless user   
   respond_to do |format|
     if resource.valid_password?(params[:user][:password])
       sign_in("user", user)
       user.ensure_authentication_token
       format.json { 
         render json: {token:user.authentication_token, user_id: user.id}
       }
     else
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
