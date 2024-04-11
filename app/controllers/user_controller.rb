class UserController < ApplicationController
    def loginew
        
    end
    def keep
        @user=User.new(name: params[:name],email: params[:email])
        user=User.find_by(email: @user.email)
        if user != nil || @user.name == nil || @user.email == nil
            redirect_to("/loginew")
        else
            @user.save
            session[:user_id]=@user.id
            flash[:completion] = "ユーザー登録が完了しました"
            redirect_to("/",flash: {completion: "ユーザー登録が完了しました"})
            
            
        end

    end
    def login_form
    end
    def login
        @user=User.find_by(name: params[:name],email: params[:email])
        if @user
        session[:user_id]=@user.id
        redirect_to("/",flash: {notice: "ログインが完了しました"})
        
        else 
            redirect_to("/login",flash: {completion: "一致しませんもう一度入力してください"})
        end
    end
    def logout
        @current_user_choice = nil
        session[:user_id] = nil
        flash[:notice] = "ログアウトしました"
        redirect_to("/")
      end
end
