class Notifier < ActionMailer::Base
  default from: "zlw302323@163.com"
  def create_vacation(vacation)
      @vacation=vacation
      @user=vacation.user
     mail(:to => @user.manager, :subject => "Welcome to My vacation Site")
  end
end
