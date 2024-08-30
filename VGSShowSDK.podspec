Pod::Spec.new do |spec|
  spec.name         = "VGSShowSDKN1co"
  spec.version      = "1.2.1"
  spec.summary      = "VGS Show - is a product suite that allows customers to reveal and show information securely without possession of it."
	spec.swift_version = '5.0'
  spec.description  = <<-DESC
      VGS Show iOS SDK allows you to securely reveal data from VGS and display it via forms without having to have that data pass through your systems.
                   DESC
  spec.homepage     = "https://github.com/h4b-dev/vgs-show-ios"
	spec.license      = { type: 'MIT', file: 'LICENSE' }
  spec.author             = { "Very Good Security" => "support@verygoodsecurity.com" }
  spec.platform     = :ios, "13.0"
  spec.ios.deployment_target = "13.0"
  spec.source       = { :git => "https://github.com/h4b-dev/vgs-show-ios", :tag => "#{spec.version}" }
	spec.requires_arc = true

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |core|
  #set as default podspec to prevent from downloading additional modules
    core.source_files = "Sources/VGSShowSDK", "Sources/VGSShowSDK/**/*.{swift}", "Sources/VGSShowSDK/**/*.{h, m}", "Sources/VGSShowSDK/PrivacyInfo.xcprivacy"
  end
end
