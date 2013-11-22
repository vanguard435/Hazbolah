class Report < ActionMailer::Base
  default from: "isaacquek@hotmail.com"
  def report_email(user)
  	@user = user
 	mail(to: @user.email, subject: 'Weekly reflection! - Reflect')
end
