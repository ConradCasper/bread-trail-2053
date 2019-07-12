class SessionsController < ApplicationController

    def new
    end


    def create
      # byebug
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            flash[:info] = "Login Successful!"
            redirect_to posts_path

        else
            @error = "No such username or password."
            render :new
        end
    end


    def destroy
        session[:user_id] = nil
        redirect_to posts_path
    end

end
