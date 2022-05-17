//
//  OCRClient.h
//  OCR
//
//  Created by MCOMM00008 on 14/03/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "OCRIdentifierViewController.h"
#import "OCRDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface OCRClient : NSObject

@property(nonatomic, weak)id <OCRDelegate> delegate;

- (void)showOCRIdentifier:(UIViewController*)parent;

@end

NS_ASSUME_NONNULL_END
