xcodebuild archive -workspace ABC.xcworkspace \
  -scheme ABC \
  -sdk iphoneos \
  -archivePath "./archives/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO


xcodebuild archive  -workspace ABC.xcworkspace \
  -scheme ABC \
  -sdk iphonesimulator \
  -archivePath "./archives/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

 xcodebuild -create-xcframework \
    -framework ./archives/ios_devices.xcarchive/Products/Library/Frameworks/ABC.framework \
   -framework ./archives/ios_simulators.xcarchive/Products/Library/Frameworks/ABC.framework \
  -output build/ABC.xcframework
