module SessionsHelper
<<<<<<< HEAD
  def current_user
  User.find_by(id: session[:user_id]) != nil
  end

  def log_in(user)
    session[:user_id] = user.id

  end

  def logged_in?
      if current_user != nil
        return true
      else   
        return false
      end
  end

=======
>>>>>>> 42f7f04a90c498655f718e3a564c807c3c4c05dd
end
