# MNC Identifier SDK for iOS

MNC Identifier is a service to identify, and verify consumer with AI in it. This SDK has 2 main features

* [About](https://mobile.mncinnovation.id/docs/mncidentifier/overview/)
* [Face](#face-identifier-usage)
* [OCR](#ocr-usage)


## Installation
add this to your podfile

```ruby
#This is for Face Identifier
 pod 'MNCIdentifier/Face', '1.0.1'
 pod 'GoogleMLKit/FaceDetection', '2.3.0'

#This is for OCR Identifier
 pod 'MNCIdentifier/OCR', '1.0.1'
 pod 'GoogleMLKit/TextRecognition', '2.3.0'
 pod 'GoogleMLKit/ObjectDetection', '2.3.0'

```

![banner_liveness](/screenshoots/banner_liveness.jpeg)

## Face Identifier Usage
In Objective-C
```objectivec
#import <MNCFaceIdentifier/MNCFaceIdentifierClient.h>
#import <MNCFaceIdentifier/MNCFaceIdentifierDelegate.h>

@interface ViewController() <MNCFaceIdentifierDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    .......
    MNCFaceIdentifierClient client = [MNCFaceIdentifierClient new];
    client.delegate = self;
    
    [client showFaceIdentifier:self];
}

- (void)faceIdentifierResult:(MNCFaceIdentifierResult *)result {
    //this function return data result from Face Identifier
    //this function return captured image from process face identifier with type data UIImage
}

@end
```

In Swift
```swift
import MNCFaceIdentifier

class ViewController: UIViewController, MNCFaceIdentifierDelegate {

   override func viewDidLoad() {
        .......
        let client = MNCFaceIdentifierClient()
        client.delegate = self
        
        client.showFaceIdentifier(self)
  }

  func faceIdentifierResult(_ result: MNCFaceIdentifierResult!) {
        //this function return data result from Face Identifier
        //this function return captured image from process face identifier with type data UIImage
  }
}
```

![banner_ocr](/screenshoots/banner_ocr.jpeg)

## OCR Usage
In Objective-C
```objectivec
#import <MNCOCRIdentifier/MNCOCRIdentifierClient.h>
#import <MNCOCRIdentifier/MNCOCRIdentifierDelegate.h>

@interface ViewController() <MNCOCRIdentifierDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    .......
    MNCOCRIdentifierClient *client = [MNCOCRIdentifierClient new];
    client.delegate = self;
    client.isFlashEnable = NO;
    [client showOCRIdentifier:self];
}

- (void)ocrResult:(MNCOCRIdentifierResult *)result {
     //this function return data result from OCR. 
     //This function return KTP image Path and KTP Data
}

@end
```

In Swift
```swift
import MNCOCRIdentifier

class ViewController: UIViewController, MNCOCRIdentifierDelegate {

   override func viewDidLoad() {
        .......
        let client = MNCOCRIdentifierClient()
        client.delegate = self
        client.isFlashEnable = true
        client.showOCRIdentifier(self)
  }

  func ocrResult(_ result: MNCOCRIdentifierResult?) {
         //this function return data result from OCR. 
         //This function return KTP image Path and KTP Data
  }
}
```
