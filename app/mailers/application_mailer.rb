class ApplicationMailer < ActionMailer::Base
 default from: "contatoapromoter@gmail.com"
  # layout 'mailer'
  
  def notifier_register(subscriber)
    @subscriber = subscriber
    subject = 'Guia Definitivo para um App de Sucesso'.to_s()
    mail(to: @subscriber.email , subject: subject)
  end
  
end
