//
//  PFObjectStore.m
//  ParseStarterProject
//
//  Created by Winnie Wu on 7/15/13.
//
//

#import "PFObjectStore.h"
@interface PFObjectStore ()
{
    NSMutableArray *_qCourses;
}
@end

@implementation PFObjectStore

- (id) init
{
    self = [super init];
    if (self) {
        _qCourses = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (PFObjectStore *) sharedStore
{
    static PFObjectStore *sharedStore = nil;
    if (!sharedStore)
    {
        sharedStore = [[super allocWithZone:nil] init];
    }
    return sharedStore;
}

- (void) removeCourse:(PFObject *)c
{
    [_qCourses removeObjectIdenticalTo: c];
}

-(void) addCourse:(PFObject *)c
{
    [_qCourses addObject:c];
}

@end