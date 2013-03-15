if Rails.env.production?
  app_id = "445194672227328"
else
  app_id = "493848090644965"
end

FacebookShare.default_facebook_share_options = {
  :framework => :jquery,
  :jquery_function => "$",

  :app_id => app_id,
  :status => true,
  :cookie => true,
  :xfbml => true,

  :selector => '.fb_share',
  :locale => 'en_US'
}
