Pod::Spec.new do |spec|

  spec.name         = "thirdPartyLoader"
  spec.version      = "1.0.1"
  spec.summary      = "My Own valiation module creation."
  spec.description  = "I have some idea which i am trying to implement"
  spec.homepage     = "https://github.com/souvikbumble/thirdPartyLoader"
  spec.license      = "MIT"
  spec.author       = { "Souvik Maiti" => "souvik.maiti@robosoftin.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/souvikbumble/thirdPartyLoader.git", :tag => "1.0.1" }
  spec.source_files  = "thirdPartyLoader/**/*.{swift}"
  spec.swift_versions = "5.0"
  spec.dependency "IBMMobileFirstPlatformFoundation", '8.0.2021101914'
  spec.dependency "ObjectMapper"
  spec.dependency "AlamofireImage"
  spec.dependency "ReachabilitySwift"
  spec.dependency "PromiseKit"
  spec.dependency "GBDeviceInfo"

end
