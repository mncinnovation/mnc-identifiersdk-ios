//
//  OCRResultModel.h
//  OCR
//
//  Created by MCOMM00008 on 08/05/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KTPDataModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface OCRResultModel : NSObject

@property (nonatomic) NSString *ktpPath;
@property (nonatomic) KTPDataModel *ktpData;

@end

NS_ASSUME_NONNULL_END
