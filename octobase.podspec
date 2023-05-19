Pod::Spec.new do |spec|
  spec.name         = "octobase"
  spec.version      = "0.0.13"
  spec.summary      = "octobase."
  spec.description  = "swift binding of octobase."
  spec.homepage     = "https://github.com/toeverything/OctoBase"
  spec.source = { :git => 'https://github.com/toeverything/octobase-swift-binding.git', :tag => "swift-v#{spec.version}" }
  spec.source_files  =["Sources/OctoBase/*.{swift}"]
  spec.license      = { :type => 'AGPL-3.0' }
  spec.author       = { "toeverything" => "contact@toeverything.info" }
  spec.swift_version = '5.0'
  spec.platform    = :ios
  spec.ios.deployment_target = '9.0'
  spec.vendored_frameworks = "RustXcframework.xcframework"
  spec.ios.vendored_library = "RustXcframework.xcframework/ios-arm64/liboctobase.a"
end
