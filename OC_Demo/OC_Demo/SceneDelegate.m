//
//  SceneDelegate.m
//  OC_Demo
//
//  Created by Anthony Zhang on 2020/4/2.
//  Copyright © 2020 Anthony Zhang. All rights reserved.
//

#import "SceneDelegate.h"
#import "MainVC.h"
#import "MiddleVC.h"
#import "LastVC.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {

    // 获取WindowScene
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    // 获取Window
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    // 设置Window的大小位置
    self.window.frame = windowScene.screen.bounds;
    
    // 创建TabBarController
    UITabBarController *tabBarVC = [UITabBarController new];
    
    // 创建你的VC
    MainVC *main = [MainVC new];
    main.title = @"第一";
    MiddleVC *middle = [MiddleVC new];
    middle.title = @"第二";
    LastVC *last = [LastVC new];
    last.title = @"第三";
    
    // 创建NavigationController 把你的VC设置为rootVC
    UINavigationController *mainNav = [[UINavigationController alloc] initWithRootViewController:main];
    mainNav.tabBarItem.title = @"第一";
    mainNav.tabBarItem.image = [UIImage imageNamed:@"default"];
    
    UINavigationController *middleNav = [[UINavigationController alloc] initWithRootViewController:middle];
    middleNav.tabBarItem.title = @"第二";
    middleNav.tabBarItem.image = [UIImage imageNamed:@"default"];
    
    UINavigationController *lastNav = [[UINavigationController alloc] initWithRootViewController:last];
    lastNav.tabBarItem.title = @"第三";
    lastNav.tabBarItem.image = [UIImage imageNamed:@"default"];
    
    // 将NavigationController加到TabBarController
    [tabBarVC addChildViewController:mainNav];
    [tabBarVC addChildViewController:middleNav];
    [tabBarVC addChildViewController:lastNav];
    
    // 将Window的rootVC设置为TabBarController
    self.window.rootViewController = tabBarVC;
    
    // 使Window可见
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {

}


- (void)sceneDidBecomeActive:(UIScene *)scene {

}


- (void)sceneWillResignActive:(UIScene *)scene {

}


- (void)sceneWillEnterForeground:(UIScene *)scene {

}


- (void)sceneDidEnterBackground:(UIScene *)scene {

}


@end
