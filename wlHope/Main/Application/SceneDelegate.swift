//
//  SceneDelegate.swift
//  wlHope
//
//  Created by Fuze on 11/05/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    private var appCoordinator: AppCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.appCoordinator = AppCoordinator(windowScene: windowScene)
        self.appCoordinator?.start()
    }
}

