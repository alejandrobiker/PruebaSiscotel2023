class UsersController < ApplicationController

    def index
        @users = User.all.order(id: :asc)
    end

    def show
        user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
    
        if @user.save
          redirect_to users_path, notice: t('.created')
        else
          render :new, status: :unprocessable_entity
        end
    end

    def edit
        user
    end

    def update
        if user.update(user_params)
          redirect_to users_path, notice: t('.updated')
        else
          render :edit, status: :unprocessable_entity
        end
    end
    
    def destroy
      user.destroy
  
      redirect_to users_path, notice: t('.destroyed'), status: :see_other
    end

    private

    def user_params
        params.require(:user).permit(:type_person, :identification, :issuance_date, :expiration_date, :name, :email, :main_phone, :secondary_phone)
    end

    def user
        @user = User.find(params[:id])
    end

end
