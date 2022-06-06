//
//  MNCFaceIdentifierDelegate.h
//  MNCFaceIdentifier
//
//  Created by MCOMM00008 on 30/05/22.
//
#import "MNCFaceIdentifierResult.h"

#ifndef MNCFaceIdentifierDelegate_h
#define MNCFaceIdentifierDelegate_h

@protocol MNCFaceIdentifierDelegate <NSObject>

- (void)faceIdentifierResult:(MNCFaceIdentifierResult *)result;

@end

#endif /* MNCFaceIdentifierDelegate_h */
