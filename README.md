# MNC Identifier SDK for iOS

MNC Identifier is a service to identify, and verify consumer with AI in it. This SDK has 2 main features

- Face Identifier (1.1.9) (for face identification)
- OCR Identifier (1.1.9) (for optical character recognition)

![Alt Text](https://i.imgur.com/9oexWKl.gif)

## Installation

add this to your podfile

```ruby
#This is for Face Identifier
 pod 'MNCIdentifier/Face', '1.1.9'
 pod 'GoogleMLKit/FaceDetection', '4.0.0'

#This is for OCR Identifier
 pod 'MNCIdentifier/OCR', '1.1.9'
 pod 'GoogleMLKit/TextRecognition', '4.0.0'
 pod 'GoogleMLKit/ObjectDetection', '4.0.0'

```

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
}

- (void)buttonTapped:(UIButton *)sender {
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


  }

  @IBAction func buttonTapped(_ sender: UIButton) {
        client.showFaceIdentifier(self)
  }

  func faceIdentifierResult(_ result: MNCFaceIdentifierResult!) {
        //this function return data result from Face Identifier
        //this function return captured image from process face identifier with type data UIImage
  }
}
```

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
    client.isCameraOnly = NO; //this properties for MNCOCRIdentifer with features camera only
}

- (void)buttonTapped:(UIButton *)sender {
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
        client.isCameraOnly = true //this properties for MNCOCRIdentifer with features camera only
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
        client.showOCRIdentifier(self)
  }

  func ocrResult(_ result: MNCOCRIdentifierResult?) {
         //this function return data result from OCR.
         //This function return KTP image Path and KTP Data
  }
}
```
