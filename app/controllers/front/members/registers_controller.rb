class Front::Members::RegistersController < Devise::RegistrationsController
	  def new
      @user = User.new()
		  redirect_to "/"
  end
    
  def create
    super
  end
end
