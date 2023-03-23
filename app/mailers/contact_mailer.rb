class ContactMailer < ApplicationMailer
  def contact(infos)
    @infos = infos
    mail(to: 'kami.gourbail@gmail.com', subject: 'Contact Quai Antique')
  end
end
