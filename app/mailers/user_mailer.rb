class UserMailer < ApplicationMailer
    default from: 'no-reply@startupstudio.fr'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://startupstudio.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Un nouveau founder arrive !') 
  end


  def new_founder_email(founder)
    #on récupère l'instance founder pour ensuite pouvoir les passer à la view en @founder
    @founder = startup

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://startupstudio.fr/ignition' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @founder.startup.admin.email, subject: 'Un nouveau founder se prépare à l action!') 
  end
  
end

