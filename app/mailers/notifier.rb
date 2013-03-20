class Notifier < ActionMailer::Base
  default from: "zlw302323@163.com"
  def create_vacation
     mail(:to => "zlw302323@163.com", :subject => "Welcome to My vacation Site")
  end
end
