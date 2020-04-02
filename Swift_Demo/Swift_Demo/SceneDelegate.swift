//
//  SceneDelegate.swift
//  Swift_Demo
//
//  Created by Anthony Zhang on 2020/4/2.
//  Copyright © 2020 Anthony Zhang. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowscene = (scene as? UIWindowScene) else { return }
        // 用windowscene创建window
        window = UIWindow(windowScene: windowscene)
        // 设定Window大小和位置
        window?.frame = UIScreen.main.bounds
        // 创建TabBarController
        let tabBarController = UITabBarController()
        
        // 创建你的VC
        let first = ViewController()
        let second = ViewController()
        let third = ViewController()
        
        first.title = "第一"
        first.tabBarItem.title = "第一"
        first.tabBarItem.image = UIImage(named: "common")
        first.view.backgroundColor = .systemRed
        
        second.title = "第二"
        second.tabBarItem.title = "第二"
        second.tabBarItem.image = UIImage(named: "common")
        second.view.backgroundColor = .systemYellow
        
        third.title = "第三"
        third.tabBarItem.title = "第三"
        third.tabBarItem.image = UIImage(named: "common")
        third.view.backgroundColor = .systemBlue
        
        // 在VC外套上一层NavigationController
        let firstNav = UINavigationController(rootViewController: first)
        let secondNav = UINavigationController(rootViewController: second)
        let thirdNav = UINavigationController(rootViewController: third)
        // 加到TabBarController
        tabBarController.addChild(firstNav)
        tabBarController.addChild(secondNav)
        tabBarController.addChild(thirdNav)
        // 设置window的rootVC并显示
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }


}

