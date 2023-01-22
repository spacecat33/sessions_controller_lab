class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to root_path # or '/'
          else
            redirect_to login_path # or '/login'
          end
    end

    def destroy
        session.delete :name
        redirect_to root_path
    end
end