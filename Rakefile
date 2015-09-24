# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.

  app.api_version = "16"
  app.target_api_version = "16"

  # Default build ONLY for Genymotion Emulator
  app.archs = ["x86"] unless ARGV.include?("device") || ARGV.include?("archive")

  app.name = "simple_test"
  app.package = "com.your_company.simple_test"
  app.theme = "@android:style/Theme.Holo.Light"
  #app.permissions = [:internet, :access_network_state, :access_coarse_location, :access_fine_location, :write_external_storage]
  app.icon = 'ic_launcher'

  # "Version name" is for people - "version code" must always be a higher number in Google Play (tied to git builds)
  app.version_name = "0.0.1"
  app.version_code = (`git rev-list HEAD --count`.strip.to_i).to_s

  app.application_class = "BluePotionApplication"
  app.main_activity = "PMHomeActivity"
  app.sub_activities += %w(PMSingleFragmentActivity PMNavigationActivity)


  app.gradle do
    # Android support v4 library. Older version?  Why?
    dependency "com.android.support", artifact: "support-v4", version: "22.0.+"

    # Volley.  Included because BP links classes.  We don't use this.
    dependency "com.mcxiaoke.volley", artifact: "library", version: "1.0.10"

    # Ion.  Networking / remote images.
    dependency 'com.koushikdutta.ion', artifact: "ion", version: "2.0+"

    # Google Messaging.
    dependency "com.google.android.gms", :artifact => "play-services-gcm", :version => "7.8.+"

    # Facebook.  Older version?  Why 4.0.0?
    # dependency 'com.facebook.android:facebook-android-sdk:4.5.0'

    # RoundedImageView.  Puts our images in circle masks.
    dependency 'com.makeramen:roundedimageview:2.1.2'

    # Ultra Pull To Refresh.  Pull to refresh for refreshable lists.
    dependency 'in.srain.cube:ultra-ptr:1.0.10'
  end

end

