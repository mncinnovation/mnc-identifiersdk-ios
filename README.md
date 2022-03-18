# MNC Identifier SDK for iOS

MNC Identifier is a service to identify, and verify consumer with AI in it. This SDK has 2 main features
- Face Identifier (0.1.4)
- OCR Identifier (*Under development*)

![Alt Text](https://i.imgur.com/9oexWKl.gif)

## Installation
add this to your podfile

```ruby
#This is for Face Identifier
 pod 'MNCIdentifier/Face', '0.1.4'
 pod 'GoogleMLKit/FaceDetection'

#This is for OCR Identifier
#Coming Soon
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

//Liveness result when al
- (void)faceIdentifierResult:(FaceResultModel *)result {

}

@end
```

In Swift
```swift
import Face

class ViewController: FaceIdentifierDelegate {

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
  }
}
```
