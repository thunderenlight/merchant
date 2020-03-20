Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, "t3IjDrKM5TW5RlH2gxblO3kuC", "fNUKdU4AQLnrX30c29cq6RHfxtEO88cRXBzQIH6URrkPIKDlwO"
end
