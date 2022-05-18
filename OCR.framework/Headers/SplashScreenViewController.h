//
//  SplashScreenViewController.h
//  OCR
//
//  Created by MCOMM00008 on 18/05/22.
//

#import <UIKit/UIKit.h>
#import "OCRDelegate.h"
#import "DismissDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface SplashScreenViewController : UIViewController

@property (weak, nonatomic) id <OCRDelegate> resultDelegate;

@end

NS_ASSUME_NONNULL_END
