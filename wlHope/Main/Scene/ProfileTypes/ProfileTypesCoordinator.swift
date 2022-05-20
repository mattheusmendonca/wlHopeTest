//
//  ProfileTypesCoordinator.swift
//  wlHope
//
//  Created by Fuze on 12/05/22.
//

import Foundation
import UIKit

class ProfileTypesCoordinator: NavigationCoordinator {
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    var profileTypesViewModel: ProfileTypesViewModel?
    
    init(rootViewController: UINavigationController = UINavigationController()) {
        self.rootViewController = UINavigationController()
        self.profileTypesViewModel = DefaultProfileTypesViewModel(coordinator: self)
    }
    
    func start() {
        let profileTypesViewController = ProfileTypesViewController()
        profileTypesViewController.bind(to: self.profileTypesViewModel!)
        self.rootViewController.isNavigationBarHidden = true
        self.rootViewController.viewControllers = [profileTypesViewController]
        self.rootViewController.modalPresentationStyle = .fullScreen
    }
    
    func dismiss() {
        self.rootViewController.dismiss(animated: true) {
            self.isCompleted?()
        }
    }

}
