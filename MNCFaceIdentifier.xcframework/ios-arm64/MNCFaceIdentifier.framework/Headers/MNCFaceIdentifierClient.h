//
//  MNCFaceIdentifierClient.h
//  MNCFaceIdentifier
//
//  Created by MCOMM00008 on 30/05/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MNCFaceIdentifierDelegate.h"
#import "MFIMode.h"

NS_ASSUME_NONNULL_BEGIN

@interface MNCFaceIdentifierClient : NSObject

@property (nonatomic, weak) id <MNCFaceIdentifierDelegate> delegate;
@property (nonatomic) NSArray<NSNumber *> *sequenceOfSteps;

- (void)showFaceIdentifier:(UIViewController *)parent;

@end

NS_ASSUME_NONNULL_END
