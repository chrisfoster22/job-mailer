class SendMailer < ApplicationMailer
  def invitation(address)
    @address = address
    mail(to: address, subject: 'You will receive a confirmation email shortly')
  end

  def confirmation(address)
    mail(to: address, subject: 'Your data is ready!')
  end
end
