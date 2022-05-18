# MNC Identifier SDK for iOS

MNC Identifier is a service to identify, and verify consumer with AI in it. This SDK has 2 main features
- Face Identifier (0.1.9) (for face identification)
- OCR Identifier (0.1.9) (for optical character recognition)

![Alt Text](https://i.imgur.com/9oexWKl.gif)

## Installation
add this to your podfile

```ruby
#This is for Face Identifier
 pod 'MNCIdentifier/Face', '0.1.9'
 pod 'GoogleMLKit/FaceDetection', '2.3.0'

#This is for OCR Identifier
 pod 'MNCIdentifier/OCR', '0.1.9'
 pod 'GoogleMLKit/TextRecognition', '2.3.0'
 pod 'GoogleMLKit/ObjectDetection', '2.3.0'

```

## Face Identifier Usage
In Objective-C
```objectivec
#import <Face/FaceClient.h>
#import <Face/FaceSettingModel.h>
#import <Face/FaceIdentifierDelegate.h>

@interface ViewController() <FaceIdentifierDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    .......
    FaceClient client = [FaceClient new];
    FaceSettingModel *setting = [FaceSettingModel new];
    setting.isDebugMode = NO;
    
    client.delegate = self;
    client.setting = setting;
    [client showFaceIdentifier:self];
}

- (void)faceIdentifierResult:(FaceResultModel *)result {
    //this function return data result from Face Identifier
    //this function return captured image from process face identifier with type data UIImage
}

@end
```

In Swift
```swift
import Face

class ViewController: UIViewController, FaceIdentifierDelegate {

   override func viewDidLoad() {
        .......
        let client = FaceClient()
        let setting = FaceSettingModel()
        setting.isDebugMode = false
        
        client.delegate = self
        client.setting = setting
        
        client.showFaceIdentifier(self)
  }

  func faceIdentifierResult(_ result: FaceResultModel!) {
        //this function return data result from Face Identifier
        //this function return captured image from process face identifier with type data UIImage
  }
}
```

## OCR Usage
In Objective-C
```objectivec
#import <OCR/OCRClient.h>
#import <OCR/OCRDelegate.h>

@interface ViewController() <OCRDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    .......
    OCRClient client = [OCRClient new];
    client.delegate = self;
    [client showOCRIdentifier:self];
}

- (void)ocrResult:(OCRResultModel *)result {
     //this function return data result from OCR. 
     //This function return KTP image Path and KTP Data
}

@end
```

In Swift
```swift
import OCR

class ViewController: UIViewController, OCRDelegate {

   override func viewDidLoad() {
        .......
        let client = OCRClient()
        client.delegate = self
        client.showFaceIdentifier(self)
  }

  func ocrResult(_ result: OCRResultModel!) {
         //this function return data result from OCR. 
         //This function return KTP image Path and KTP Data
  }
}
```
