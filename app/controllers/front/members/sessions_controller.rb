class Front::Members::SessionsController < Devise::SessionsController
	def new
		
    end
    
    def create
      super
		redirect_to "/"
    end
    
    def destroy
      super
    end
	

end
