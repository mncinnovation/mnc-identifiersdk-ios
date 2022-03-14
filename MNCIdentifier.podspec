Pod::Spec.new do |spec|

  spec.name         = "MNCIdentifier"
  spec.version      = "0.1.0"
  spec.summary      = "A short description of MNCIdentifier."

  
  spec.description  = "description"

  spec.homepage     = "https://github.com/mncinnovation/mnc-identifier-ios"

  spec.license      =  { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  spec.author       = { "Ihksan Sukmawan" => "ihksan.sukmawan@mncgroup.com" }

  spec.source       = { :git => "https://github.com/mncinnovation/mnc-identifier-ios.git", :tag => "#{spec.version}" }

  spec.framework  = "UIKit"

  spec.dependency 'GoogleMLKit/FaceDetection', '2.3.0'
  

  spec.subspec 'Face' do |face|
    face.public_header_files = "Face.framework/Headers/*.h"
    face.source_files = "Face.framework/Headers/*.h"
    face.header_dir = "Face"
  end

  spec.pod_target_xcconfig = {
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
