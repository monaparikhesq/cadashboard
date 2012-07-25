OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'ecaf9fc7cd5086bfe552', '6d6a20fe92e0631327353ae8a07b78456e252eb0'
end