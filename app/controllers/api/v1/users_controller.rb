class Api::V1::UsersController < ApplicationController
    def create
        user = User.create(user_params)

        if user.save
            session[:user_id] = user.id

            render json: UserSerializer.new(user), status: :created
        else
            resp = {
                error: user.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
