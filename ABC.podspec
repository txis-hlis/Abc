Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  s.name         = "ABC"
  s.version      = "1.0.0"
  s.summary      = "Best framework ever: ABC"
  s.description  = <<-DESC
                   "Best framework ever: ABC"
                   DESC
  s.homepage     = "http://github.com"
  s.license      = "MIT"
  s.author       = { "ItIsI" => "hlis-txis@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  s.platform = :ios
  s.ios.deployment_target = '12.0'

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source = { :http => 'https://www.dropbox.com/s/zambngk7iqisa1x/ABC.zip' }
  s.vendored_frameworks = 'ABC/ABC.xcframework'

  s.swift_version = "5.0"

  # ――― Dependencies ―――――――――――――――――――――――――――---――――――――――――――――――――――――――――――― #
  s.dependency 'Firebase'
  s.dependency 'FirebaseAuth'
  s.dependency 'Firebase/Messaging'
  s.dependency 'Firebase/Crashlytics'
  s.dependency 'Firebase/Analytics'
  # Any other dependency you might need.
end
