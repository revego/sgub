class OmniauthCallbacksController < Devise::OmniauthCallbacksController
	# faceboo callback
    def facebook
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.from_omniauth(request.env["omniauth.auth"])
  
      if @user.persisted?
        sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
        set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
      else
        session["devise.facebook_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
    end
  
    def failure
      redirect_to root_path
    end
    
    # github callback
	def github
	  @user = User.from_omniauth(request.env['omniauth.auth']) 
	  
	  if @user.persisted?
	    sign_in_and_redirect @user, event: :authentication
	    set_flash_message(:notice, :success, kind: 'Github') if is_navigational_format?
	  else
	    flash[:error] = 'There was a problem signing you in through Github. Please register or try signing in later.'
	    redirect_to new_user_registration_url
	  end
	end
	
	# google callback
	def google_oauth2
	  @user = User.from_omniauth(request.env['omniauth.auth'])
	  
	  if @user.persisted?
	    sign_in_and_redirect @user, event: :authentication
	    set_flash_message(:notice, :success, kind: 'Google') if is_navigational_format?
	  else
	    flash[:error] = 'There was a problem signing you in through Google. Please register or try signing in later.'
	    redirect_to new_user_registration_url
	  end 
	end
	
	# twitter callback
	def twitter
	  @user = User.from_omniauth(request.env['omniauth.auth'])
	  
	  if @user.persisted?
	    sign_in_and_redirect @user, event: :authentication
	    set_flash_message(:notice, :success, kind: 'Twitter') if is_navigational_format?
	  else
	    flash[:error] = 'There was a problem signing you in through Twitter. Please register or try signing in later.'
	    redirect_to new_user_registration_url
	  end 
	end
end