Stripe.api_key = Rails.application.credentials[Rails.env.to_sym][:stripe][:STRIPE_SECRET_KEY]

#Rails.configuration.stripe = {
#:publishable_key => ENV['PUBLISHABLE_KEY'],
#:secret_key => ENV['SECRET_KEY'],
#:public_key => ENV['PUBLIC_KEY']
#}

#Stripe.api_key = Rails.configuration.stripe[:secret_key]
