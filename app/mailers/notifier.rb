class Notifier < ActionMailer::Base
  default from: "zlw302323@163.com"
  def create_vacation(vacation ,user)
      @vacation=vacation
      @user=user
    #  log vacation
    #  log user
     mail(:to =>user.manager , :subject => "A Vacation Request From "+user.name)
  end
end
