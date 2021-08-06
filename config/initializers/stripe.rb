Stripe.api_key = Rails.application.credentials[Rails.env.to_sym][:stripe][:stripe_secret_key]

#Rails.configuration.stripe = {
#  :publishable_key => 'pk_test_51H2IS6FGbuF2Ywe6ZSyfWqNLsiejpEslJmlgoAiSYtxMYFpwcPuj3DHAbY4dt69NqXBNDJAEe2djo8w15rD53PQf00sd5zP2y5', #ENV['STRIPE_PUBLISHABLE_KEY'],
#  :secret_key => 'sk_test_51H2IS6FGbuF2Ywe6c9K7q12b7R6JrHgUACtdGQZVILeZPEDLKkfOTjdbi2TbByaohU15lwq44Ei4K5itif26uut600BHNB1teP' #ENV['STRIPE_SECRET_KEY']
#}

#Stripe.api_key = Rails.configuration.stripe[:secret_key]
