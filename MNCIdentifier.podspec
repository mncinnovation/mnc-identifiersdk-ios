Pod::Spec.new do |spec|

  spec.name         = "MNCIdentifier"
  spec.version      = "1.1.9"
  spec.summary      = "iOS SDK platforms for KYC verification services."
  
  spec.description  = "This KYC SDK involves steps to establish customer identity thorough liveness detection."

  spec.homepage     = "https://mobile.mncinnovation.id/docs/mncidentifier/overview/"

  spec.license      =  { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  spec.author       = { "Ihksan Sukmawan" => "ihksan.sukmawan@mncgroup.com", "Ari Fajrianda Alfi" => "ari.alfi@mncgroup.com" }

  spec.platform     = :ios
  spec.ios.deployment_target = "11.0"

  spec.source       = { :git => "https://github.com/mncinnovation/mnc-identifiersdk-ios.git", :tag => "#{spec.version}" }

  spec.framework  = "UIKit"
  
  spec.default_subspec = 'OCR'

  spec.subspec 'Face' do |face|
    face.vendored_frameworks = "MNCFaceIdentifier.xcframework"
    face.dependency 'GoogleMLKit/FaceDetection', '4.0.0'
  end

  spec.subspec 'OCR' do |ocr|
    ocr.vendored_frameworks = "MNCOCRIdentifier.xcframework"
    ocr.dependency 'GoogleMLKit/TextRecognition', '4.0.0'
    ocr.dependency 'GoogleMLKit/ObjectDetection', '4.0.0'
  end

  spec.pod_target_xcconfig = {
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
