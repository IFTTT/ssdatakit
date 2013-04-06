//
//  NSManagedObjectContext+SSDataKitAdditions.m
//  SSDataKit
//
//  Created by Sam Soffes on 1/25/12.
//  Copyright (c) 2012-2013 Sam Soffes. All rights reserved.
//

#import "NSManagedObjectContext+SSDataKitAdditions.h"

@implementation NSManagedObjectContext (SSDataKitAdditions)

- (NSManagedObjectContext *)newManagedObjectContextWithCurrentPersistentStoreCoordinator {
    NSManagedObjectContext *context = [[[self class] alloc] init];
    context.persistentStoreCoordinator = self.persistentStoreCoordinator;
    return context;
}

- (void)saveAndPropagateUpWithCompletion:(void (^)(NSError *))completion
{
    NSError *error = nil;
    if (![self save:&error]) {
        if (completion) {
            completion(error);
        }
    } else if (self.parentContext) {
        [self.parentContext performBlock:^{
            [self.parentContext saveAndPropagateUpWithCompletion:[completion copy]];
        }];
    } else {
        if (completion) {
            completion(nil);
        }
    }
}

- (NSError *)saveAndPropagateUpAndWait
{
    __block NSError *error = nil;
    if ([self save:&error] && self.parentContext) {
        [self.parentContext performBlockAndWait:^{
            error = [self.parentContext saveAndPropagateUpAndWait];
        }];
    }
    return error;
}

@end
