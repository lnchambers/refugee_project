class RegistrationMailer < Devise::Mailer

  def registered(admin, user, password)
    @admin = admin
    @user = user
    @password = password
    mail(to: user.email, subject: "#{admin.first_name} #{admin.last_name} has created your account for the Refugee Project")
  end

end
