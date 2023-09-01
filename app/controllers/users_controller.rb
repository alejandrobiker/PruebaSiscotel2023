class UsersController < ApplicationController

    def index
        @users = User.all.order(id: :asc)
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
    
        if @user.save
          redirect_to users_path, notice: 'Usuario creado con éxito'
        else
          render :new, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:type_person, :identification, :issuance_date, :expiration_date, :name, :email, :main_phone, :secondary_phone)
    end

end
