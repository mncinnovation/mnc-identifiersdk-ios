//
//  OCRIdentifierViewController.h
//  OCR
//
//  Created by MCOMM00008 on 15/03/22.
//

#import <UIKit/UIKit.h>
#import "OCRDelegate.h"
#import "DismissDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface OCRIdentifierViewController : UIViewController<DismissDelegate>

@property (weak, nonatomic) id <OCRDelegate> resultDelegate;

@end

NS_ASSUME_NONNULL_END
