class Users::RegistrationsController < Devise::RegistrationsController

    private

    #define permitted sign up parameters
    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :gender, :profile_picture, :date_of_birth)
    end

    #define permitted account update parameters
    def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :gender, :profile_picture, :date_of_birth)
    end
end