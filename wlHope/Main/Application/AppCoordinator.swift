//
//  AppCoordinator.swift
//  wlHope
//
//  Created by Fuze on 11/05/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var isCompleted: (() -> Void)?
    var childCoordinators = [Coordinator]()
    
    let window: UIWindow
    
    init(windowScene: UIWindowScene) {
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window.windowScene = windowScene
    }
    
    func start() {
        self.showMainRoute()
    }
    
    func showMainRoute() {
        self.freeAllChildCoordinators()
        let coordinator = MainCoordinator()
        self.start(coordinator: coordinator)
        self.window.rootViewController = coordinator.rootViewController
        self.window.makeKeyAndVisible()
    }
}
