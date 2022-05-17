//
//  OCRDelegate.h
//  OCR
//
//  Created by MCOMM00008 on 08/05/22.
//
#import "OCRResultModel.h"

#ifndef OCRDelegate_h
#define OCRDelegate_h

@protocol OCRDelegate <NSObject>

- (void)ocrResult:(OCRResultModel *)result;

@end

#endif /* OCRDelegate_h */
