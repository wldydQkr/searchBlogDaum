//
//  SceneDelegate.swift
//  SearchDaumBlog
//
//  Created by 박지용 on 2022/06/04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let rootViewModel = MainViewModel()


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = scene as? UIWindowScene else { return }
        self.window = UIWindow(windowScene: windowScene)
        
        let rootViewController = MainViewController()
        rootViewController.bind(rootViewModel)
        
        let rootNavigationController = UINavigationController(rootViewController: rootViewController)
        
        window?.rootViewController = rootNavigationController
        window?.makeKeyAndVisible()
    }
}

