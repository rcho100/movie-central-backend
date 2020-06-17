class Api::V1::SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:session][:email])

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id

            options = {
                include: [:movies]
            }
            render json: UserSerializer.new(user, options), status: :created
        else
            render json: {
                error: 'Invalid Credentials'
            }
        end
    end

    def get_current_user
        if logged_in?
            options = {
                include: [:movies]
            }
            render json: UserSerializer.new(current_user, options), status: :ok
        else
            render json: {
                notice: 'No one logged in'
            }
        end
    end

    def destroy
        session.clear
        render json: {
          notice: "Successfully logged out"
        }, status: :ok
    end
end
