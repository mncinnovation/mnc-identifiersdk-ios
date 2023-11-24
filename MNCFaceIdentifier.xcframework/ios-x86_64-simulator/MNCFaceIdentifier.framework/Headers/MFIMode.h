//
//  MFIMode.h
//  MNCFaceIdentifier
//
//  Created by Ari Fajrianda Alfi on 22/11/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, SequenceStep) {
    SequenceStepHOLD_STILL,
    SequenceStepBLINK,
    SequenceStepSHAKE_HEAD,
    SequenceStepSMILE
};

@interface MFIMode : NSObject

+ (NSNumber *)step:(uint32_t)value;

@end

NS_ASSUME_NONNULL_END
