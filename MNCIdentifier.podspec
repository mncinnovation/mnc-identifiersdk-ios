Pod::Spec.new do |spec|

  spec.name         = "MNCIdentifier"
  spec.version      = "1.1.13"
  spec.summary      = "A comprehensive iOS SDK for seamless KYC verification."
  spec.description  = "This SDK streamlines customer identity verification through advanced liveness detection, ensuring secure and efficient KYC compliance."

  spec.homepage     = "https://mobile.mncinnovation.id/docs/mncidentifier/overview/"

  spec.license      =  { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  spec.author       = { "Ihksan Sukmawan" => "ihksan.sukmawan@mncgroup.com", "Ari Fajrianda Alfi" => "ari.alfi@mncgroup.com" }

  spec.platform     = :ios

  spec.source       = { :git => "https://github.com/mncinnovation/mnc-identifiersdk-ios.git", :tag => "#{spec.version}" }

  spec.framework  = "UIKit"
  
  spec.default_subspec = 'OCR'

  spec.subspec 'Face' do |face|
    face.vendored_frameworks = "MNCFaceIdentifier.xcframework"
    face.ios.deployment_target = "12.0"
    face.dependency 'GoogleMLKit/FaceDetection', '4.0.0'
  end

  spec.subspec 'OCR' do |ocr|
    ocr.vendored_frameworks = "MNCOCRIdentifier.xcframework"
    ocr.ios.deployment_target = "15.5"
    ocr.dependency 'GoogleMLKit/TextRecognition', '7.0.0'
    ocr.dependency 'GoogleMLKit/ObjectDetection', '7.0.0'
  end

  spec.pod_target_xcconfig = {
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
