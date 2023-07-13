//
//  MNCFaceIdentifierResult.h
//  MNCFaceIdentifier
//
//  Created by MCOMM00008 on 30/05/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MOIFaceModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MNCFaceIdentifierResult : NSObject

@property (nonatomic) NSString *faceInFrame;
@property (nonatomic) NSString *faceBlink;
@property (nonatomic) NSString *faceLookLeftOrRight;
@property (nonatomic) NSString *faceSmile;
@property (nonatomic) int attempt;
@property (nonatomic, nullable) NSString *errorMessage;
@property (nonatomic) BOOL isSuccess;
@property (nonatomic) CGFloat totalTimeInMillis;
@property (nonatomic) NSMutableArray<MOIFaceModel *> *detectionResult;

- (NSString *)asJson;

@end

NS_ASSUME_NONNULL_END
