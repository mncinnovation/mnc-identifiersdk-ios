Pod::Spec.new do |spec|

  spec.name         = "MNCIdentifier"
  spec.version      = "0.1.2"
  spec.summary      = "iOS SDK platforms for KYC verification services."
  
  spec.description  = "This KYC SDK involves steps to establish customer identity thorough liveness detection."

  spec.homepage     = "https://github.com/mncinnovation/mnc-identifiersdk-ios"

  spec.license      =  { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  spec.author       = { "Ihksan Sukmawan" => "ihksan.sukmawan@mncgroup.com" }

  spec.platform     = :ios
  spec.ios.deployment_target = "11.0"

  spec.source       = { :git => "https://github.com/mncinnovation/mnc-identifiersdk-ios.git", :tag => "#{spec.version}" }

  spec.framework  = "UIKit"
  
  spec.default_subspec = 'Face'

  spec.subspec 'Face' do |face|
    face.vendored_frameworks = "Face/Face.framework"
    face.dependency 'GoogleMLKit/FaceDetection', '2.3.0'
  end

  spec.pod_target_xcconfig = {
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
