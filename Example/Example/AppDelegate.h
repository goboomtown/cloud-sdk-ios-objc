//
//  AppDelegate.h
//  Example
//
//  Created by Larry Borsato on 2018-09-07.
//  Copyright © 2018 Boomtown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

